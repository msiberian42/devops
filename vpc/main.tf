module "vpc" {
  source = "../modules/vpc"

  env_name = var.env_name

  subnets = var.subnets
}