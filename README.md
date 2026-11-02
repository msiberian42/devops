## Домашнее задание к занятию 14 «Средство визуализации Grafana»

### Задание 1

**Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource.**

<img width="1706" height="636" alt="image" src="https://github.com/user-attachments/assets/5c182658-e118-4cdf-b37c-8a2a4b235f82" />

### Задание 2

**Для решения этого задания приведите promql-запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.**

<img width="1871" height="955" alt="image" src="https://github.com/user-attachments/assets/f57e135a-ffbe-46f8-8bac-24671ffda4ab" />

CPU:

`100 * (1 - avg by (instance) (
  rate(node_cpu_seconds_total{mode="idle"}[5m])
))`

CPULA 1/5/15:

`node_load1
node_load5
node_load15`

Available Memory:

`node_memory_MemAvailable_bytes`

Filesystem Available Space:

`node_filesystem_avail_bytes{mountpoint="/mnt/host/c"}`

### Задание 3

**Создайте для каждой Dashboard подходящее правило alert. В качестве решения задания приведите скриншот вашей итоговой Dashboard.**




