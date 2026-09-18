# resource "yandex_vpc_network" "develop" {
#   name = var.vpc_name
# }
# resource "yandex_vpc_subnet" "develop" {
#   name           = var.vpc_name
#   zone           = var.default_zone
#   network_id     = yandex_vpc_network.develop.id
#   v4_cidr_blocks = var.default_cidr
# }

# module "vpc" {
#   source = "./modules/vpc"

#   network_name = var.vpc_name
#   zone = var.default_zone
#   v4_cidr_blocks = var.default_cidr
# }

module "vpc_prod" {
  source   = "./modules/vpc"
  env_name = "production"
  subnets = [
    { zone = "ru-central1-a", cidr = "10.0.1.0/24" },
    { zone = "ru-central1-b", cidr = "10.0.2.0/24" },
    { zone = "ru-central1-d", cidr = "10.0.3.0/24" },
  ]
}

module "vpc_dev" {
  source   = "./modules/vpc"
  env_name = "develop"
  subnets = [
    { zone = "ru-central1-a", cidr = "10.0.1.0/24" },
  ]
}

# Передаем SSH-ключ в cloud-init
data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")

  vars = {
    ssh_key = var.vms_ssh_root_key
  }
}

# ВМ для marketing
module "marketing-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = var.env_name
  # network_id     = module.vpc.subnet.network_id
  #   subnet_zones   = [module.vpc.subnet.zone]
  # subnet_ids     = [module.vpc.subnet.id]
  network_id     = module.vpc_dev.subnet["ru-central1-a"].network_id
  subnet_zones   = [module.vpc_dev.subnet["ru-central1-a"].zone]
  subnet_ids     = [module.vpc_dev.subnet["ru-central1-a"].id]
  instance_name  = var.project_variables["marketing"].instance_name
  instance_count = var.project_variables["marketing"].instance_count
  image_family   = var.vm_image_family
  public_ip      = var.project_variables["marketing"].public_ip

  labels = {
    owner   = var.project_variables["marketing"].owner,
    project = var.project_variables["marketing"].project_name
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.project_variables["marketing"].serial_port_enable
  }
}

# ВМ для analytics
module "analytics-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = var.env_name
  #   network_id     = [module.vpc.subnet.network_id]
  # subnet_zones   = [module.vpc.subnet.zone]
  # subnet_ids     = [module.vpc.subnet.id]
  network_id     = module.vpc_dev.subnet["ru-central1-a"].network_id
  subnet_zones   = [module.vpc_dev.subnet["ru-central1-a"].zone]
  subnet_ids     = [module.vpc_dev.subnet["ru-central1-a"].id]
  instance_name  = var.project_variables["analytics"].instance_name
  instance_count = var.project_variables["analytics"].instance_count
  image_family   = var.vm_image_family
  public_ip      = var.project_variables["analytics"].public_ip

  labels = {
    owner   = var.project_variables["analytics"].owner,
    project = var.project_variables["analytics"].project_name
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.project_variables["analytics"].serial_port_enable
  }
}