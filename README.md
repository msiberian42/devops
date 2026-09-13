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

**6. Замените имя docker-контейнера в блоке кода на hello_world. Не перепутайте имя контейнера и имя образа. Мы всё ещё продолжаем использовать name = "nginx:latest". Выполните команду terraform apply -auto-approve. Объясните своими словами, в чём может быть опасность применения ключа -auto-approve. Догадайтесь или нагуглите зачем может пригодиться данный ключ? В качестве ответа дополнительно приложите вывод команды docker ps.**

Без ключа -auto-approve команда terraform apply сначала показывает план изменений и спрашивает подтверждение, прежде чем их применить. С этим ключом команда все сделает автоматически, что может повлечь удаление/пересоздание ресурсов, удаление данных, настроек сети и т.д. Этот ключ нежелательно использовать в продакшене, чтобы не применить автоматически изменения, которые все уронят и нанесут вред. Однако, ключ -auto-approve может быть полезен на стендах разработки или тестирования, где поломку можно откатить без финансовых потерь для компании. Также его используют в CI/CD для автоматизации развертывания.

docker ps:

<img width="1127" height="87" alt="image" src="https://github.com/user-attachments/assets/3b32e6c7-0af3-4126-b595-c47f098d781a" />

**7. Уничтожьте созданные ресурсы с помощью terraform. Убедитесь, что все ресурсы удалены. Приложите содержимое файла terraform.tfstate.**

<img width="410" height="46" alt="image" src="https://github.com/user-attachments/assets/2e90f74d-7627-4e3d-928f-b90b6f853a18" />

<img width="627" height="290" alt="image" src="https://github.com/user-attachments/assets/06209dbf-b400-474a-af83-51c37c336dd8" />

**8. Объясните, почему при этом не был удалён docker-образ nginx:latest. Ответ ОБЯЗАТЕЛЬНО НАЙДИТЕ В ПРЕДОСТАВЛЕННОМ КОДЕ, а затем ОБЯЗАТЕЛЬНО ПОДКРЕПИТЕ строчкой из документации terraform провайдера docker. (ищите в классификаторе resource docker_image )**

Параметр keep_locally = true у ресурса docker_image указывает Terraform сохранить Docker-образ локально после удаления ресурса.

<img width="346" height="106" alt="image" src="https://github.com/user-attachments/assets/27c9e10a-30f1-4e96-8869-ddb04d36e652" />

<img width="970" height="55" alt="image" src="https://github.com/user-attachments/assets/9ca4ba6b-e880-4c33-8b56-addb469254e8" />

Получившийся код из задания: [main_task1.tf](https://github.com/msiberian42/devops/blob/homework_terraform1/main_task1.tf)

## Задание 2

**Зайдите на вашу ВМ , подключитесь к контейнеру и проверьте наличие секретных env-переменных с помощью команды env. Запишите ваш финальный код в репозиторий.**

Настроил подключение терраформа к докеру по ssh и установку контейнера mysql с генерацией паролей. Вывод команды env:

<img width="616" height="431" alt="image" src="https://github.com/user-attachments/assets/bcdc9657-30ba-4382-b36a-e03a6e767ccd" />

Репозиторий с получившимся кодом [тут](https://github.com/msiberian42/terraform-yandex-cloud_homework1/blob/main/main.tf)







