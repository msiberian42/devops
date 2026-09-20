resource "yandex_mdb_mysql_database" "my_database" {
  cluster_id = var.cluster_id
  name       = var.database_name
}

resource "yandex_mdb_mysql_user" "my_database" {
  cluster_id = var.cluster_id
  name       = var.user_name

  generate_password = true
}