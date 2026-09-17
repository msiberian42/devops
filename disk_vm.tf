resource "yandex_compute_disk" "disk" {
  count = 3

  name = "disk-${count.index + 1}"

  type = var.compute_disk_resources["common"].disk_type
  size = var.compute_disk_resources["common"].size
}

resource "yandex_compute_instance" "storage" {
  name     = "storage"
  hostname = "storage"

  platform_id = var.vm_web_platform_id
  resources {
    cores         = var.vms_resources["storage"].cores
    memory        = var.vms_resources["storage"].memory
    core_fraction = var.vms_resources["storage"].core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      size     = var.vms_resources["storage"].size
    }
  }
  scheduling_policy {
    preemptible = var.vm_web_preemptible
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    #nat                = var.vm_web_nat
    security_group_ids = [yandex_vpc_security_group.example.id]
    nat                = false
  }

  metadata = {
    serial-port-enable = tostring(local.serial_port_enable)
    ssh-keys           = "ubuntu:${local.ssh_key}"
  }

  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.disk

    content {
      disk_id = secondary_disk.value.id
    }
  }
}