terraform {
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

  required_version = ">= 1.3.0"
}

provider "yandex" {
  folder_id = var.folder_id
  cloud_id  = var.cloud_id
  token     = var.token
}

provider "aws" {

  access_key = "fake-access-key"
  secret_key = "fake-secret-key"

  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  endpoints {
    s3 = "https://storage.yandexcloud.net"
  }
}