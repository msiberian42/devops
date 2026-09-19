variable "cluster_name" {
  description = "Имя кластера MySQL"
  type        = string
}

variable "network_id" {
  description = "ID VPC сети"
  type        = string
}

variable "subnets" {
  description = "Список подсетей для размещения хостов"
  type = list(object({
    zone      = string
    subnet_id = string
  }))
}

variable "ha" {
  description = "High Availability: false - один хост, true - два хоста"
  type        = bool
  default     = true
}

variable "mysql_version" {
  description = "Версия MySQL"
  type        = string
  default     = "8.0"
}

variable "resource_preset_id" {
  description = "Тип ресурсов для хоста"
  type        = string
  default     = "s2.micro"
}

variable "disk_type_id" {
  description = "Тип диска"
  type        = string
  default     = "network-hdd"
}

variable "disk_size" {
  description = "Размер диска в ГБ"
  type        = number
  default     = 15
}