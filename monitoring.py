#!/usr/bin/env python3

import json
import os
import time
from datetime import datetime
from pathlib import Path

LOG_DIR = Path("/var/log/awesome")
LOG_PREFIX = "awesome-monitoring"

def read_cpu_times():
    """Читает суммарные счётчики CPU из /proc/stat."""
    with open("/proc/stat", encoding="utf-8") as f:
        for line in f:
            if line.startswith("cpu "):
                values = list(map(int, line.split()[1:]))
                idle = values[3] + (values[4] if len(values) > 4 else 0)
                return sum(values), idle

    raise RuntimeError("CPU statistics not found")

def get_cpu_usage():
    """Вычисляет загрузку CPU за интервал в 1 секунду."""
    previous = read_cpu_times()
    time.sleep(1)
    current = read_cpu_times()

    total_delta = current[0] - previous[0]
    idle_delta = current[1] - previous[1]

    if total_delta <= 0:
        return 0.0

    usage = 100 * (total_delta - idle_delta) / total_delta
    return round(max(0.0, min(100.0, usage)), 2)

def get_memory_metrics():
    """Собирает метрики RAM из /proc/meminfo."""
    meminfo = {}

    with open("/proc/meminfo", encoding="utf-8") as f:
        for line in f:
            key, value = line.split(":", 1)
            meminfo[key] = int(value.strip().split()[0]) * 1024

    total = meminfo["MemTotal"]
    available = meminfo.get("MemAvailable", meminfo.get("MemFree", 0))
    used = max(0, total - available)

    return {
        "ram_total_bytes": total,
        "ram_used_bytes": used,
        "ram_usage_percent": round(used / total * 100, 2) if total else 0.0,
    }

def get_disk_metrics():
    """Собирает максимальные показатели использования диска и inode."""
    max_disk_usage = 0.0
    max_inode_usage = 0.0

    with open("/proc/mounts", encoding="utf-8") as f:
        mounts = {line.split()[1] for line in f if len(line.split()) >= 3}

    for mount_point in mounts:
        try:
            stat = os.statvfs(mount_point)

            if stat.f_blocks > 0:
                used = stat.f_blocks - stat.f_bfree
                max_disk_usage = max(
                    max_disk_usage, used / stat.f_blocks * 100
                )

            if stat.f_files > 0:
                used_inodes = stat.f_files - stat.f_ffree
                max_inode_usage = max(
                    max_inode_usage, used_inodes / stat.f_files * 100
                )

        except (OSError, ValueError):
            continue

    return {
        "disk_usage_percent": round(max_disk_usage, 2),
        "inode_usage_percent": round(max_inode_usage, 2),
    }

def get_load_metrics():
    """Читает load average и количество запущенных процессов."""
    with open("/proc/loadavg", encoding="utf-8") as f:
        load_values = f.read().split()

    processes_running = 0

    with open("/proc/stat", encoding="utf-8") as f:
        for line in f:
            if line.startswith("procs_running "):
                processes_running = int(line.split()[1])
                break

    return {
        "load_average_1m": float(load_values[0]),
        "processes_running": processes_running,
    }

def collect_metrics():
    """Собирает полный набор метрик за один запуск."""
    metrics = {
        "timestamp": int(time.time()),
        "cpu_usage_percent": get_cpu_usage(),
        **get_memory_metrics(),
        **get_disk_metrics(),
        **get_load_metrics(),
    }

    return metrics

def write_metrics(metrics):
    """Добавляет JSON-строку в лог текущего дня."""
    date = datetime.now().strftime("%y-%m-%d")
    log_file = LOG_DIR / f"{date}-{LOG_PREFIX}.log"

    with open(log_file, "a", encoding="utf-8") as f:
        f.write(json.dumps(metrics, ensure_ascii=False) + "\n")

def main():
    try:
        metrics = collect_metrics()
        write_metrics(metrics)
    except (OSError, ValueError, KeyError, RuntimeError) as exc:
        print(f"Monitoring error: {exc}", flush=True)
        raise SystemExit(1)


if __name__ == "__main__":
    main()
