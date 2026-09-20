output "database_id" {
  description = "ID созданной базы данных"
  value       = yandex_mdb_mysql_database.my_database.id
}

output "user_id" {
  description = "ID созданного пользователя"
  value       = yandex_mdb_mysql_user.my_database.id
}

output "user_password" {
  description = "Сгенерированный пароль пользователя"
  value       = yandex_mdb_mysql_user.my_database.password
  sensitive   = true
}