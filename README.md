# Итоговый проект модуля «Облачная инфраструктура. Terraform»

Описание итогового проекта:
Задания итогового проекта охватывают полный цикл создания и настройки инфраструктуры, установку необходимых инструментов, сборку и развертывание приложения, а также хранение образов в реестре контейнеров:

1. Сборка web-приложения (с описанием Dockerfile, docker compose yml).
2. Настройка инфраструктуры в Yandex Cloud, используя Terraform.
3. Разворачивание приложение в облачной среде.

## Задание 1

**Развертывание инфраструктуры в Yandex Cloud.**

1. Создаем в проекте модуль бакет для удаленного хранения terraform state (аналогично ДЗ №5):

<img width="1253" height="462" alt="image" src="https://github.com/user-attachments/assets/00c94cdb-b91f-40b3-a065-9a202f2d2cd1" />

[Код модуля](https://github.com/msiberian42/YC-Terraform-Docker-Project/tree/main/backet)

2. Создаем в проекте модуль vpc для virtual private cloud: сети с двумя подсетями в разных регионах (аналогично ДЗ №5):

<img width="1107" height="337" alt="image" src="https://github.com/user-attachments/assets/ca96ff53-bfcd-44d3-93b7-a55701f98409" />

<img width="1290" height="393" alt="image" src="https://github.com/user-attachments/assets/eb8987da-7ba8-4693-82d8-a143e7eaeac8" />

[Код модуля](https://github.com/msiberian42/YC-Terraform-Docker-Project/tree/vpc/vpc)

3. 




