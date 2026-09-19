variable "cluster_id" {
  description = "ID существующего MySQL кластера"
  type        = string
}

variable "database_name" {
  description = "Имя базы данных"
  type        = string
}

variable "user_name" {
  description = "Имя пользователя MySQL"
  type        = string
}