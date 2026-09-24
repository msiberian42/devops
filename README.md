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

3. Создаем в проекте модуль vm для разворачивания виртуальных машин. Прописываем в нем создание группы безопасности:

<img width="1052" height="346" alt="image" src="https://github.com/user-attachments/assets/75538164-f469-4cfd-93fc-ad758d9f904d" />

<img width="701" height="356" alt="image" src="https://github.com/user-attachments/assets/4693d4ec-fe3b-411b-9d0a-29d18ef41cd5" />

<img width="1406" height="770" alt="image" src="https://github.com/user-attachments/assets/d389d0b9-9efc-47e9-b0a1-eecb4009e933" />

[Код модуля](https://github.com/msiberian42/YC-Terraform-Docker-Project/tree/vm/vm)

4. Создаем в проекте модуль db для разворачивание базы данных. В ней прописываем разворачивание ВМ для БД, ее группу безопасности, установку mysql и создание базы данных через cloud-config файл. Создаем в машине базу данных mysql, пользователя и пароль.

<img width="1077" height="402" alt="image" src="https://github.com/user-attachments/assets/55d43da6-e52d-4b2f-ad1c-f7be42074c6b" />

<img width="227" height="256" alt="image" src="https://github.com/user-attachments/assets/cd591622-6828-44fc-974d-7abbf5768ece" />

<img width="382" height="272" alt="image" src="https://github.com/user-attachments/assets/8321f144-1b9c-4424-af85-d48d7f8ba308" />

[Код модуля](https://github.com/msiberian42/YC-Terraform-Docker-Project/tree/mysql/db)

5. Создаем в проекте модуль container_registry для создания регистра контейнеров. Создаем в модуле сервисный аккаунт для скачивания образов.

<img width="1032" height="365" alt="image" src="https://github.com/user-attachments/assets/77b84c76-6472-43dd-aa78-43e7eae8ff3d" />

[Код модуля](https://github.com/msiberian42/YC-Terraform-Docker-Project/tree/main/container_registry)

## Задание 2


