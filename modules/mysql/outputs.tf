output "cluster_id" {
  description = "ID кластера MySQL"
  value       = yandex_mdb_mysql_cluster.my_cluster.id
}

output "cluster_name" {
  description = "Имя кластера MySQL"
  value       = yandex_mdb_mysql_cluster.my_cluster.name
}