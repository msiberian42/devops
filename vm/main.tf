data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../vpc/terraform.tfstate"
  }
}


data "template_file" "cloudinit" {
  template = file("${path.module}/cloud-init.yml")

  vars = {
    ssh_key = var.vms_ssh_root_key
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