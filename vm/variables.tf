###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
# variable "default_cidr" {
#   type        = list(string)
#   default     = ["10.0.1.0/24"]
#   description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
# }

# variable "vpc_name" {
#   type        = string
#   default     = "develop"
#   description = "VPC network&subnet name"
# }

###common vars

variable "vms_ssh_root_key" {
  type = string
  #default     = "your_ssh_ed25519_key"
  description = "ssh-keygen -t ed25519"
}

###example vm_web var
# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
#   description = "example vm_web_ prefix"
# }

###example vm_db var
# variable "vm_db_name" {
#   type        = string
#   default     = "netology-develop-platform-db"
#   description = "example vm_db_ prefix"
# }

variable "env_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "vm_image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "project_variables" {
  type = map(object({
    instance_name      = string
    instance_count     = number
    public_ip          = bool
    owner              = string
    project_name       = string
    serial_port_enable = number
  }))

  default = {
    marketing = {
      instance_name      = "marketing"
      instance_count     = 1
      public_ip          = true
      owner              = "i.ivanov"
      project_name       = "marketing"
      serial_port_enable = 1
    }
    analytics = {
      instance_name      = "analytics"
      instance_count     = 1
      public_ip          = true
      owner              = "i.ivanov"
      project_name       = "analytics"
      serial_port_enable = 1
    }
  }
}
