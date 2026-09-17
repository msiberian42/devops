output "web_vms" {
  description = "Информация о web ВМ"

  value = [
    for vm in yandex_compute_instance.web : {
      name = vm.name
      id   = vm.id
      fqdn = vm.fqdn
    }
  ]
}

output "db_vms" {
  description = "Информация о db ВМ"

  value = [
    for vm in yandex_compute_instance.db : {
      name = vm.name
      id   = vm.id
      fqdn = vm.fqdn
    }
  ]
}