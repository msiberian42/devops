# Домашнее задание к занятию «Продвинутые методы работы с Terraform»

## Задание 1

**1. Возьмите из демонстрации к лекции готовый код для создания с помощью двух вызовов remote-модуля -> двух ВМ, относящихся к разным проектам(marketing и analytics) используйте labels для обозначения принадлежности. В файле cloud-init.yml необходимо использовать переменную для ssh-ключа вместо хардкода. Передайте ssh-ключ в функцию template_file в блоке vars ={} . Воспользуйтесь примером. Обратите внимание, что ssh-authorized-keys принимает в себя список, а не строку.**

Использование remote-модуля:

<img width="883" height="536" alt="image" src="https://github.com/user-attachments/assets/364df45a-c1b4-4787-b8c7-6b443f53b5fc" />

<img width="877" height="532" alt="image" src="https://github.com/user-attachments/assets/07e65d5e-7d10-48bb-8e6b-96e175a79fe6" />

Передача ssh:

<img width="377" height="217" alt="image" src="https://github.com/user-attachments/assets/ce69cb35-e0a7-4a4f-8052-60d559773e5a" />

<img width="430" height="207" alt="image" src="https://github.com/user-attachments/assets/39238fee-61b0-47b2-a250-ca9a03983128" />

Сам ключ прописан в personal.auto.tfvars


**2. Добавьте в файл cloud-init.yml установку nginx.**

В yaml файле из примера прописана установка и настройка nginx:

<img width="572" height="327" alt="image" src="https://github.com/user-attachments/assets/84583774-bdd7-41bf-bc74-ef22ba8135f3" />

<img width="775" height="562" alt="image" src="https://github.com/user-attachments/assets/0c2a4706-7baf-4fb3-a170-021772808e1f" />

**3. Предоставьте скриншот подключения к консоли и вывод команды sudo nginx -t, скриншот консоли ВМ yandex cloud с их метками. Откройте terraform console и предоставьте скриншот содержимого модуля. Пример: > module.marketing_vm**

Результат команды sudo nginx -t:

<img width="607" height="106" alt="image" src="https://github.com/user-attachments/assets/f38ae04a-1ef7-4249-94c2-44119a394973" />

<img width="607" height="118" alt="image" src="https://github.com/user-attachments/assets/3510671d-4e88-423d-926f-5959b76a017c" />

Консоль яндекс:

<img width="717" height="412" alt="image" src="https://github.com/user-attachments/assets/4e8984b1-d8d6-42c6-90e3-ffbf95e2959a" />

<img width="716" height="395" alt="image" src="https://github.com/user-attachments/assets/ec7562f3-99dc-44c6-90a3-db8315b6f4c2" />

Содержимое модуля marketing-vm:

<img width="642" height="783" alt="image" src="https://github.com/user-attachments/assets/d2e09226-2af3-43e5-b3d6-0f1bda2e6758" />

<img width="497" height="627" alt="image" src="https://github.com/user-attachments/assets/78c39d9f-6573-4074-a071-a3fcd3702d64" />

<img width="647" height="682" alt="image" src="https://github.com/user-attachments/assets/4adffc1f-ec54-4bfe-811c-08fe2a80155a" />

<img width="732" height="766" alt="image" src="https://github.com/user-attachments/assets/4e02efc4-f28e-474a-9e74-dae22e04e84d" />

<img width="512" height="787" alt="image" src="https://github.com/user-attachments/assets/4db8e7e8-e847-433f-8f6d-5f415a713647" />

<img width="568" height="801" alt="image" src="https://github.com/user-attachments/assets/763c86c0-2fcc-4619-ad4d-c93d6fbcc044" />

Содержимое модуля analytics-vm:

<img width="656" height="753" alt="image" src="https://github.com/user-attachments/assets/9874250f-be26-47b4-a550-55d3c06f0f84" />

<img width="560" height="817" alt="image" src="https://github.com/user-attachments/assets/9ac450cc-9025-40cf-966e-1e189f354a16" />

<img width="717" height="803" alt="image" src="https://github.com/user-attachments/assets/ffc22c59-da2f-4f70-8c8f-48644e855ff0" />

<img width="531" height="808" alt="image" src="https://github.com/user-attachments/assets/465530d0-c139-4050-8170-89816c5327e2" />

<img width="420" height="797" alt="image" src="https://github.com/user-attachments/assets/dbd23514-f87f-46e0-9a63-9d6478f47693" />

<img width="567" height="507" alt="image" src="https://github.com/user-attachments/assets/e3ee669f-62fc-4d2f-84cf-8acd5a2133ca" />

## Задание 2

**Напишите локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть в зоне, объявленной при вызове модуля, например: ru-central1-a.
Вы должны передать в модуль переменные с названием сети, zone и v4_cidr_blocks.
Модуль должен возвращать в root module с помощью output информацию о yandex_vpc_subnet.**

Создаем в проекте каталог modules\vpc. Создаем в нем файлы main.tf, variables.tf, outputs.tf, providers.tf:

<img width="590" height="270" alt="image" src="https://github.com/user-attachments/assets/fe9b4fb5-37ab-4efa-97dc-08e8fc7c0da9" />

<img width="555" height="380" alt="image" src="https://github.com/user-attachments/assets/62aa3576-2103-4d4c-8ffe-3b4576e9aa4a" />

<img width="552" height="157" alt="image" src="https://github.com/user-attachments/assets/c8312873-1d42-4b9c-9971-140587db4b6c" />

<img width="482" height="225" alt="image" src="https://github.com/user-attachments/assets/07f4e590-1cec-4dcd-8071-97865abba391" />

**Пришлите скриншот информации из terraform console о своем модуле. Пример: > module.vpc_dev:**

<img width="322" height="121" alt="image" src="https://github.com/user-attachments/assets/9700742b-9793-45e0-ae7b-f6a76f43cd0d" />

**4. Замените ресурсы yandex_vpc_network и yandex_vpc_subnet созданным модулем. Не забудьте передать необходимые параметры сети из модуля vpc в модуль с виртуальной машиной.**

<img width="596" height="451" alt="image" src="https://github.com/user-attachments/assets/9385f99f-31ff-4fef-acbd-74b3d8aad054" />

<img width="430" height="476" alt="image" src="https://github.com/user-attachments/assets/cf7d5ef0-4a7f-4a26-9ff7-bf3137136e30" />

**5. Сгенерируйте документацию к модулю с помощью terraform-docs.**

<img width="848" height="43" alt="image" src="https://github.com/user-attachments/assets/f884c87f-e562-4971-b0af-aeb3106fe2e6" />

<img width="701" height="582" alt="image" src="https://github.com/user-attachments/assets/a067acf2-617d-4c23-bf68-caddc5d0ce8c" />

## Задание 3

**1. Выведите список ресурсов в стейте.**

<img width="541" height="207" alt="image" src="https://github.com/user-attachments/assets/e90c8108-23cd-4fa7-85c9-a8354da91963" />

**2. Полностью удалите из стейта модуль vpc.**

<img width="610" height="107" alt="image" src="https://github.com/user-attachments/assets/5183e78d-a1af-4c30-b078-2582504c4d23" />

**3. Полностью удалите из стейта модуль vm.**

<img width="962" height="168" alt="image" src="https://github.com/user-attachments/assets/68de3d93-e423-4efb-9804-f541c341b8a6" />

**4. Импортируйте всё обратно. Проверьте terraform plan. Значимых(!!) изменений быть не должно. Приложите список выполненных команд и скриншоты процессы.**

<img width="1127" height="386" alt="image" src="https://github.com/user-attachments/assets/70c3e9ba-fd71-4ad6-9dba-1daf97aafb3c" />

<img width="1125" height="391" alt="image" src="https://github.com/user-attachments/assets/bea3c2fd-c4a7-46c4-b739-08a3b94b9848" />

<img width="1150" height="385" alt="image" src="https://github.com/user-attachments/assets/14edf681-b445-4086-bd91-0662e0fdf105" />

<img width="1141" height="416" alt="image" src="https://github.com/user-attachments/assets/43cb78e3-5142-407b-a448-5074e157267b" />

Проверка:

<img width="1301" height="582" alt="image" src="https://github.com/user-attachments/assets/70d7f73d-ab21-4bc2-872f-6bd8cdf363b6" />

Коммит проекта по итогам задания 3 [тут](https://github.com/msiberian42/devops/tree/e4b93fb7dd3776a987084e6e32eaf657d8f33c83)

## Задание 4

**Измените модуль vpc так, чтобы он мог создать подсети во всех зонах доступности, переданных в переменной типа list(object) при вызове модуля.**

Меняем в модуле main.tf, variables.tf. output.tf:

<img width="551" height="347" alt="image" src="https://github.com/user-attachments/assets/de91274a-8680-4c01-ab62-03760aa0a690" />

<img width="455" height="372" alt="image" src="https://github.com/user-attachments/assets/5947c39f-39da-4f98-b6cc-a834c9db0841" />

<img width="572" height="333" alt="image" src="https://github.com/user-attachments/assets/2e23d2e7-356b-4248-b520-3b16bb4cbc39" />

Вызов модуля в проекте:

<img width="558" height="425" alt="image" src="https://github.com/user-attachments/assets/c9c882c1-0bd9-4c38-b948-7af1fa4421dd" />

Меняем переменные в вм:

<img width="882" height="358" alt="image" src="https://github.com/user-attachments/assets/e18e0c80-60b3-48b7-b3f3-b4111fc87c86" />

<img width="887" height="367" alt="image" src="https://github.com/user-attachments/assets/c410bff5-1504-45b7-9c5a-bc0ddd2f6e30" />

Результат:

<img width="567" height="292" alt="image" src="https://github.com/user-attachments/assets/2092dfe5-2e0a-42cd-848e-b19c5abe67c5" />

<img width="1136" height="512" alt="image" src="https://github.com/user-attachments/assets/3598103e-b47f-4c26-91c3-2a5e6e4ca19d" />

Коммит проекта по итогам задания 4 [тут](https://github.com/msiberian42/devops/commit/0a98a0d61a9b3b31ed054711968e81740daf09a2)

## Задание 5

**1. Напишите модуль для создания кластера managed БД Mysql в Yandex Cloud с одним или несколькими(2 по умолчанию) хостами в зависимости от переменной HA=true или HA=false. Используйте ресурс yandex_mdb_mysql_cluster: передайте имя кластера и id сети.**

Создаем каталог modules/mysql/. Создаем в нем файлы main.tf, variables.tf, outputs.tf, providers.tf:

<img width="822" height="542" alt="image" src="https://github.com/user-attachments/assets/c82382a0-16e5-4283-b139-209c50102ef5" />

<img width="782" height="727" alt="image" src="https://github.com/user-attachments/assets/28748467-25f2-44ed-8598-617de7f89bde" />

<img width="407" height="416" alt="image" src="https://github.com/user-attachments/assets/e4bd805a-2569-457d-9954-6df729e9f5d4" />

<img width="648" height="277" alt="image" src="https://github.com/user-attachments/assets/aafb5664-a3b6-46b8-826a-5cc6fcebebc7" />

<img width="452" height="250" alt="image" src="https://github.com/user-attachments/assets/4893e708-5b61-4209-9e5c-6c7a624ba243" />

Вызов модуля:

<img width="626" height="482" alt="image" src="https://github.com/user-attachments/assets/3d03bbe2-ab6c-4098-ba01-e0d911586054" />

**2. Напишите модуль для создания базы данных и пользователя в уже существующем кластере managed БД Mysql. Используйте ресурсы yandex_mdb_mysql_database и yandex_mdb_mysql_user: передайте имя базы данных, имя пользователя и id кластера при вызове модуля.**

Создаем каталог modules/mysql_database/. Создаем в нем файлы main.tf, variables.tf, outputs.tf, providers.tf:

<img width="715" height="278" alt="image" src="https://github.com/user-attachments/assets/f844082a-27c3-4629-af27-eb18ea7002d3" />

<img width="572" height="383" alt="image" src="https://github.com/user-attachments/assets/c070ed51-b2d7-479a-b4a1-0b11a5b9e820" />

<img width="652" height="261" alt="image" src="https://github.com/user-attachments/assets/04d8ed34-6b6b-408d-ac30-03649beebe57" />

<img width="510" height="253" alt="image" src="https://github.com/user-attachments/assets/c9803088-2d6e-4e9f-bc31-da52fc498fad" />

Вызов модуля:

<img width="492" height="382" alt="image" src="https://github.com/user-attachments/assets/3ea5a8e2-9ad0-4bb2-9927-4ac015cf712f" />

**3. Используя оба модуля, создайте кластер example из одного хоста, а затем добавьте в него БД test и пользователя app. Затем измените переменную и превратите сингл хост в кластер из 2-х серверов.**

Переменные кластера из одного хоста:

<img width="426" height="251" alt="image" src="https://github.com/user-attachments/assets/7d88d92a-5359-498d-9025-618364bd988a" />

Результат:

<img width="1451" height="377" alt="image" src="https://github.com/user-attachments/assets/40e3da00-4fb7-4a2d-b63c-d8564a057493" />

<img width="1207" height="157" alt="image" src="https://github.com/user-attachments/assets/86f312da-435a-4b63-9665-6bfcb7ca3144" />

Меняем переменную mysql_ha на true. Результат:

<img width="1227" height="251" alt="image" src="https://github.com/user-attachments/assets/77141dd2-b470-4a79-9c83-558f11c68cd6" />

Коммит проекта по итогам задания 5 [тут](https://github.com/msiberian42/devops/commit/0201b28f15b0412f34bcf49784c603516cb02366)

## Задание 6

**Используя готовый yandex cloud terraform module и пример его вызова(examples/simple-bucket): https://github.com/terraform-yc-modules/terraform-yc-s3 . Создайте и не удаляйте для себя s3 бакет размером 1 ГБ(это бесплатно), он пригодится вам в ДЗ к 5 лекции.**

<img width="537" height="133" alt="image" src="https://github.com/user-attachments/assets/ded0b788-91da-47bf-9dee-de763d1efaa6" />

<img width="1283" height="260" alt="image" src="https://github.com/user-attachments/assets/7cdc1ab4-1b0f-4d95-b894-5f545d19f89b" />

Коммит проекта по итогам задания 6 [тут](https://github.com/msiberian42/devops/commit/e2216515bbf919e8bdc1e192f90c9f640bc23ee4)

## Задание 7

**Разверните у себя локально vault, используя docker-compose.yml в проекте.
Для входа в web-интерфейс и авторизации terraform в vault используйте токен "education".
Создайте новый секрет по пути http://127.0.0.1:8200/ui/vault/secrets/secret/create Path: example
secret data key: test secret data value: congrats!
Считайте этот секрет с помощью terraform и выведите его в output**

Docker-compose:

<img width="572" height="436" alt="image" src="https://github.com/user-attachments/assets/adf2550e-231a-488c-8354-7641a48a1655" />

main.tf:

<img width="770" height="595" alt="image" src="https://github.com/user-attachments/assets/8130ea11-1b28-4ae6-befa-e5cb2b2172ae" />

Секрет:

<img width="560" height="193" alt="image" src="https://github.com/user-attachments/assets/bc1f7336-f230-4881-977a-901c313c8b42" />

<img width="668" height="92" alt="image" src="https://github.com/user-attachments/assets/fe53f7e1-cc0e-4f85-bacc-5c5000fd41c4" />

**Попробуйте самостоятельно разобраться в документации и записать новый секрет в vault с помощью terraform.**

Создание нового секрета:

<img width="518" height="206" alt="image" src="https://github.com/user-attachments/assets/4f709b28-66e3-4388-9d8a-8c46fc6fd294" />

Результат:

<img width="877" height="645" alt="image" src="https://github.com/user-attachments/assets/645f5430-57a6-4295-ae2a-0ec926ffd6b6" />

<img width="947" height="697" alt="image" src="https://github.com/user-attachments/assets/ec2cbe2b-9691-4924-bef4-0eaf2df9a5e2" />

## Задание 8

