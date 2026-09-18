resource "yandex_vpc_network" "my_vpc" {
  name = var.network_name
}

resource "yandex_vpc_subnet" "my_vpc" {
  name           = var.network_name
  zone           = var.zone
  network_id     = yandex_vpc_network.my_vpc.id
  v4_cidr_blocks = var.v4_cidr_blocks
}