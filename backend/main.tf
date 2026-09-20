module "s3_bucket" {
  source = "git::https://github.com/terraform-yc-modules/terraform-yc-s3.git?ref=791f536"

  bucket_name = "siberian-terraform-s3-bucket"

  folder_id = var.folder_id

  max_size = 1073741824

  acl = "private"
}