# variable "network_name" {
#   description = "Название VPC сети"
#   type        = string
# }

# variable "zone" {
#   description = "Зона сети"
#   type        = string
# }

# variable "v4_cidr_blocks" {
#   description = "CIDR блоки подсети"
#   type        = list(string)
# }

variable "env_name" {
  description = "Название VPC сети"
  type        = string
}

variable "subnets" {
  description = "Список подсетей"
  type = list(object({
    zone = string
    cidr = string
  }))
}