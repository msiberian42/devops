## Домашнее задание к занятию 5 «Тестирование roles»

**1. Запустите molecule test -s ubuntu_xenial (или с любым другим сценарием, не имеет значения) внутри корневой директории clickhouse-role, посмотрите на вывод команды.**

<img width="1462" height="427" alt="image" src="https://github.com/user-attachments/assets/71e25aa6-05b7-4278-95fe-2b541355c391" />

<img width="1191" height="541" alt="image" src="https://github.com/user-attachments/assets/c052b4be-ec13-403e-8c62-ad7fae383fbc" />

<img width="1176" height="383" alt="image" src="https://github.com/user-attachments/assets/98fc6f71-9ded-4e13-af9f-6999956be033" />

**2. Перейдите в каталог с ролью vector-role и создайте сценарий тестирования по умолчанию при помощи molecule init scenario --driver-name docker.**

<img width="986" height="72" alt="image" src="https://github.com/user-attachments/assets/fc31edc3-2b14-43f6-905f-7fee30fb6f6c" />

**3. Добавьте несколько разных дистрибутивов (oraclelinux:8, ubuntu:latest) для инстансов и протестируйте роль, исправьте найденные ошибки, если они есть.**

<img width="492" height="506" alt="image" src="https://github.com/user-attachments/assets/1205a0c0-741a-452a-8aab-ccbca2041ddd" />

<img width="891" height="366" alt="image" src="https://github.com/user-attachments/assets/607c7515-2a69-4178-aaa4-60814509ed64" />

**4. Добавьте несколько assert в verify.yml-файл для проверки работоспособности vector-role (проверка, что конфиг валидный, проверка успешности запуска и др.).**





