# output "subnet" {
#   description = "Информация о созданной подсети"
#   value       = yandex_vpc_subnet.my_vpc
# }

output "subnet" {
  description = "Информация о созданной подсети"
  value       = yandex_vpc_subnet.vpc_list
}

output "network_id" {
  description = "ID VPC сети"
  value       = yandex_vpc_network.vpc_list.id
}