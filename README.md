# Домашнее задание к занятию «Основы Terraform. Yandex Cloud»

## Задание 1

**Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.**

Добавляем значения переменных cloud_id и folder_id в personal.auto.tfvars. Публичный ssh тоже можно прописать в этом файле вместо файла variables.tf.

Ошибка 1:

<img width="1352" height="228" alt="image" src="https://github.com/user-attachments/assets/b125291e-0fd0-49f0-bb8b-00f107a29fe9" />

Переменная Service_account_key_file ожидает путь к JSON-файлу, а file() возвращает содержимое файла. Можно положить authorized_key.json в папку проекта и обязательно добавить его в гитигнор, чтобы ключ не утек через репозиторий. Тогда эта строчка будет выглядеть так:

<img width="655" height="177" alt="image" src="https://github.com/user-attachments/assets/0c391f53-b95d-4b43-9cc4-5a6393a959a0" />



