output "network_id" {
  description = "ID VPC сети"
  value       = module.vpc.network_id
}

output "subnets" {
  description = "Подсети VPC"
  value       = module.vpc.subnets
}