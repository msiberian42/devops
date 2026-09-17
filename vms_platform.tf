// Переменные ВМ web
variable "vm_web_image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_name" {
  type    = string
  default = "platform-web"
}

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v3"
}

variable "vm_web_preemptible" {
  type    = bool
  default = true
}

variable "vm_web_nat" {
  type    = bool
  default = true
}

# variable "vm_web_serial_port_enable" {
#   type    = number
#   default = 1
# }

# // Переменные ВМ db
# variable "vm_db_image_family" {
#   type    = string
#   default = "ubuntu-2004-lts"
# }

# variable "vm_db_name" {
#   type    = string
#   default = "platform-db"
# }

# variable "vm_db_platform_id" {
#   type    = string
#   default = "standard-v3"
# }

# variable "vm_db_preemptible" {
#   type    = bool
#   default = true
# }

# variable "vm_db_nat" {
#   type    = bool
#   default = true
# }

# variable "vm_db_serial_port_enable" {
#   type    = number
#   default = 1
# }

# variable "vm_db_zone" {
#   type    = string
#   default = "ru-central1-b"
# }

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
    size          = number
  }))

  default = {
    web = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      size          = 15
    }

    storage = {
      cores         = 2
      memory        = 2
      core_fraction = 20
      size          = 15
    }

    # db = {
    #   cores         = 2
    #   memory        = 2
    #   core_fraction = 20
    #   size          = 15
    # }
  }
}

# variable "metadata" {
#   type = map(object({
#     serial_port_enable = number
#     ssh_keys           = string
#   }))
# }

variable "each_vm" {
  type = list(object({
    vm_name       = string,
    cpu           = number,
    ram           = number,
    disk_volume   = number,
    core_fraction = number,
    preemptible   = bool
  }))

  default = [{
    vm_name       = "main",
    cpu           = 4,
    ram           = 4,
    disk_volume   = 20,
    core_fraction = 20,
    preemptible   = true
    },
    {
      vm_name       = "replica",
      cpu           = 2,
      ram           = 2,
      disk_volume   = 15,
      core_fraction = 20,
      preemptible   = true
  }]
}