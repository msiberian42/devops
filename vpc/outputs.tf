output "network_id" {
  description = "ID VPC net"
  value       = module.vpc.network_id
}

output "subnets" {
  description = "subnets VPC"
  value       = module.vpc.subnets
}