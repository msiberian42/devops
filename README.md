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

**2. Изучите файл .gitignore. В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?(логины,пароли,ключи,токены итд)**

Ответ - personal.auto.tfvars. В комментарии даже подписано, что это хранилище секретов. Terraform автоматически подхватывает файлы с именем *.auto.tfvars. Поскольку этот файл прописан в гитигноре, секреты из него не попадут в репозиторий. Если файл уже присутствует в репозитории, нужно не только внести его в гитигнор, но и удалить его командой git rm --cached personal.auto.tfvars.

**3. Выполните код проекта. Найдите в state-файле секретное содержимое созданного ресурса random_password, пришлите в качестве ответа конкретный ключ и его значение.**

"result": "oueXj3GQ64wlABXF"

<img width="878" height="628" alt="image" src="https://github.com/user-attachments/assets/39efc093-c28c-4df6-8cac-aa2452419edf" />

**4. Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла main.tf. Выполните команду terraform validate. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.**

Блок кода:

<img width="665" height="357" alt="image" src="https://github.com/user-attachments/assets/63f2740e-4f5b-4c0c-916a-9b2d7910b6ae" />


Ошибка 1:

<img width="506" height="167" alt="image" src="https://github.com/user-attachments/assets/4a8141cf-b336-4d75-a327-939784829681" />

У docker_image отсутствует имя ресурса. Синтаксис ресурса должен быть: resource "тип ресурса" "имя ресурса" { поля внутри ресурса }. VS Code подсвечивает ошибку.

Ошибка 2:

<img width="1018" height="168" alt="image" src="https://github.com/user-attachments/assets/f2e864da-a98d-4d7e-a7bb-fd1f9376bde4" />

Имя ресурса может начинаться только с буквы или нижней черты.

Ошибка 3:

<img width="937" height="205" alt="image" src="https://github.com/user-attachments/assets/351149f3-c66f-40f5-b5af-f1b42ec01324" />

Неверная ссылка на random_password. Ресурса с именем "random_string_FAKE" не объявлено. Также допущена опечатка в параметре resulT. Нужно обращаться к random_password.random_string.result.

**5. Выполните код. В качестве ответа приложите: исправленный фрагмент кода и вывод команды docker ps**

Исправленный код:

<img width="587" height="542" alt="image" src="https://github.com/user-attachments/assets/29bbc4e5-210f-4d9c-bf2a-983f1f9b2125" />

docker ps:

<img width="1236" height="68" alt="image" src="https://github.com/user-attachments/assets/a9c2a040-23cd-4a85-81b0-273ea12970ca" />



