resource "yandex_mdb_mysql_cluster" "my_cluster" {
  name        = var.cluster_name
  network_id  = var.network_id
  environment = "PRESTABLE"
  version     = var.mysql_version

  resources {
    resource_preset_id = var.resource_preset_id
    disk_type_id       = var.disk_type_id
    disk_size          = var.disk_size
  }

  dynamic "host" {
    for_each = var.ha ? slice(var.subnets, 0, 2) : slice(var.subnets, 0, 1)

    content {
      zone      = host.value.zone
      subnet_id = host.value.subnet_id
    }
  }
}