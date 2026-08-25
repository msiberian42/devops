# Домашнее задание к занятию 5. «Практическое применение Docker»

## Задача 2
Результаты сканирования приложены в файле [vulnerabilities.csv](vulnerabilities.csv)

## Задача 3

Результат sql-запроса:

<img width="621" height="698" alt="image" src="https://github.com/user-attachments/assets/b1b36bcb-9ce1-4ed7-ab89-565e55ee46fc" />

## Задача 4

Результат sql-запроса:

<img width="622" height="842" alt="image" src="https://github.com/user-attachments/assets/017f4671-19af-493f-9e26-d9ea381cd660" />

Ссылка на fork:

https://github.com/msiberian42/shvirtd-example-python

## Задача 4

**Придумайте способ не светить логин/пароль в git**

Создаем в репозитории .gitignore и вносим туда файл .env, чтобы он не попадал в коммиты.

**Предоставьте скрипт, cron-task и скриншот с несколькими резервными копиями в "/opt/backup"**

Скрипт бэкапа [тут](https://github.com/msiberian42/shvirtd-example-python/blob/main/db_backup.sh)

Cron-task:

<img width="710" height="512" alt="image" src="https://github.com/user-attachments/assets/1c21f390-baf2-47ab-ad2d-d78e83fe8047" />

Дампы:

<img width="676" height="167" alt="image" src="https://github.com/user-attachments/assets/947b73f2-7feb-4797-b273-a556ddad3d99" />
