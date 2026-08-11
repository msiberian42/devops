
source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "b1gep4cv0meis1llkp7r"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "fl8un1msdibqvkuj3q9f"
  use_ipv4_nat        = true
  zone                = "ru-central1-d"
  # Токен задал через переменную окружения командой "export YC_TOKEN=$(yc iam create-token)"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = ["echo 'hello from packer'"]
  }
  provisioner "shell" {
    script = "install-docker.sh"
  }
  provisioner "shell" {
    script = "install-utils.sh"
  }

}
