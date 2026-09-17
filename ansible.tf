variable "web_provision" {
  type        = bool
  default     = true
  description = "ansible provision switch variable"
}

resource "local_file" "ansible_inventory" {
  filename = "${abspath(path.module)}/for.ini"

  content = templatefile("${abspath(path.module)}/inventory.tftpl", {
    ssh_private_key = pathexpand("~/.ssh/mysshkey")

    web_hosts = [
      for vm in yandex_compute_instance.web : {
        name        = vm.name
        ip          = vm.network_interface[0].nat_ip_address
        internal_ip = vm.network_interface[0].ip_address
        fqdn        = vm.fqdn
      }
    ]

    db_hosts = [
      for vm in yandex_compute_instance.db : {
        name        = vm.name
        ip          = vm.network_interface[0].nat_ip_address
        internal_ip = vm.network_interface[0].ip_address
        fqdn        = vm.fqdn
      }
    ]

    storage_host = {
      name        = yandex_compute_instance.storage.name
      ip          = yandex_compute_instance.storage.network_interface[0].nat_ip_address
      internal_ip = yandex_compute_instance.storage.network_interface[0].ip_address
      fqdn        = yandex_compute_instance.storage.fqdn
    }
  })

  depends_on = [
    yandex_compute_instance.web,
    yandex_compute_instance.db,
    yandex_compute_instance.storage
  ]
}

resource "null_resource" "ansible_provision" {
  count = var.web_provision ? 1 : 0

  provisioner "local-exec" {
    command = "wsl ansible-playbook -i /mnt/c/git_repositories/devops/for.ini /mnt/c/git_repositories/devops/test.yml"
  }

  depends_on = [
    local_file.ansible_inventory
  ]
}