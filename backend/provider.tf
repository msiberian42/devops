terraform {
  required_version = "~>1.12.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.92"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.1"
    }
  }

  # backend "s3" {
  #   bucket = "siberian-terraform-s3-bucket"
  #   key    = "terraform.tfstate"
  #   region = "ru-central1"

  #   # Встроенная блокировка state-файла
  #   use_lockfile = true

  #   endpoints = {
  #     s3 = "https://storage.yandexcloud.net"
  #   }

  #   skip_region_validation      = true
  #   skip_credentials_validation = true
  #   skip_requesting_account_id  = true
  #   skip_s3_checksum            = true
  # }
}

provider "yandex" {
  folder_id = var.folder_id
  cloud_id  = var.cloud_id
  token     = var.token
}

provider "aws" {
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  # endpoints {
  #   s3 = "https://storage.yandexcloud.net"
  # }
}