# Домашнее задание к занятию «Введение в Terraform»

## Чек-лист готовности к домашнему заданию

**Скачайте и установите Terraform версии >=1.12.0 . Приложите скриншот вывода команды terraform --version.**

Для проекта требуется версия 1.12.х

<img width="912" height="172" alt="image" src="https://github.com/user-attachments/assets/ddd54f67-8e05-48f3-8975-374320ea8731" />


**Скачайте на свой ПК этот git-репозиторий. Исходный код для выполнения задания расположен в директории 01/src.**

<img width="648" height="142" alt="image" src="https://github.com/user-attachments/assets/746a4fa0-f786-41d1-b4aa-5d3ffcb43cf8" />

**Убедитесь, что в вашей ОС установлен docker.**

<img width="378" height="72" alt="image" src="https://github.com/user-attachments/assets/44d50ea9-0f3d-4633-8600-9d255525c644" />


## Задание 1

**Изучите файл .gitignore. В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?(логины,пароли,ключи,токены итд)**

Ответ - personal.auto.tfvars. В комментарии даже подписано, что это хранилище секретов. Terraform автоматически подхватывает файлы с именем *.auto.tfvars. Поскольку этот файл прописан в гитигноре, секреты из него не попадут в репозиторий. Если файл уже присутствует в репозитории, нужно не только внести его в гитигнор, но и удалить его командой git rm --cached personal.auto.tfvars.

**Выполните код проекта. Найдите в state-файле секретное содержимое созданного ресурса random_password, пришлите в качестве ответа конкретный ключ и его значение.**

"result": "oueXj3GQ64wlABXF"

<img width="878" height="628" alt="image" src="https://github.com/user-attachments/assets/39efc093-c28c-4df6-8cac-aa2452419edf" />




