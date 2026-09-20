data "terraform_remote_state" "vpc" {
  # backend = "local"
  backend = "s3"

  config = {
    # path = "../vpc/terraform.tfstate"
    bucket = "siberian-terraform-s3-bucket"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"

    endpoints = {
      s3 = "https://storage.yandexcloud.net"
    }

    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}


data "template_file" "cloudinit" {
  template = file("${path.module}/cloud-init.yml")

  vars = {
    ssh_key = var.public_ssh_key
  }
}


module "marketing_vm" {
  source = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"

  env_name = var.env_name

  network_id = data.terraform_remote_state.vpc.outputs.network_id

  subnet_zones = [
    data.terraform_remote_state.vpc.outputs.subnets["ru-central1-a"].zone
  ]

  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.subnets["ru-central1-a"].id
  ]

  instance_name  = var.project_variables["marketing"].instance_name
  instance_count = var.project_variables["marketing"].instance_count

  image_family = var.vm_image_family
  public_ip    = var.project_variables["marketing"].public_ip

  labels = {
    owner   = var.project_variables["marketing"].owner,
    project = var.project_variables["marketing"].project_name
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.project_variables["marketing"].serial_port_enable
  }
}


module "analytics_vm" {
  source = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"

  env_name = var.env_name

  network_id = data.terraform_remote_state.vpc.outputs.network_id

  subnet_zones = [
    data.terraform_remote_state.vpc.outputs.subnets["ru-central1-b"].zone
  ]

  subnet_ids = [
    data.terraform_remote_state.vpc.outputs.subnets["ru-central1-b"].id
  ]

  instance_name  = var.project_variables["analytics"].instance_name
  instance_count = var.project_variables["analytics"].instance_count

  image_family = var.vm_image_family
  public_ip    = var.project_variables["analytics"].public_ip

  labels = {
    owner   = var.project_variables["analytics"].owner,
    project = var.project_variables["analytics"].project_name
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered
    serial-port-enable = var.project_variables["analytics"].serial_port_enable
  }
}