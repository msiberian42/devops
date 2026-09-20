# Домашнее задание к занятию «Использование Terraform в команде»

## Задание 1

Проверка tflint (команда tflint --recursive):

<img width="1183" height="197" alt="image" src="https://github.com/user-attachments/assets/f5d74f55-64fb-4363-bfc5-5739e1033963" />

<img width="1196" height="152" alt="image" src="https://github.com/user-attachments/assets/1f975053-9d36-4ffe-8fdf-a9cce0361137" />

<img width="1181" height="148" alt="image" src="https://github.com/user-attachments/assets/55169bfb-b395-421b-96a2-56b9601f1816" />

Не указана версия провайдера.

<img width="1208" height="457" alt="image" src="https://github.com/user-attachments/assets/b183827f-6fb9-4a45-be24-9cfa75f6a221" />

<img width="1195" height="152" alt="image" src="https://github.com/user-attachments/assets/41277176-3240-4dd9-8e01-45c8079c1f57" />

Не используемые переменные.

<img width="1503" height="307" alt="image" src="https://github.com/user-attachments/assets/89f38e88-00b9-4f93-9d70-78734f26409e" />

Модуль подключен через ветку main, которая может измениться. Лучше привязать подключение к конкретному тегу, например: source = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=v[номер тега]"

Проверка checkov (команда checkov -d .):

<img width="1120" height="637" alt="image" src="https://github.com/user-attachments/assets/f895e7c9-f1a8-45b9-81f7-b42bc7447a0c" />

<img width="1192" height="621" alt="image" src="https://github.com/user-attachments/assets/8ad3aa51-c764-4dec-ae98-bbb81a8e71cd" />

Как и tfilnt, тут checkov ругается на то, что модуль подключен через ветку main, которая может измениться. В первом случае он предлагает привязаться к определенному коммиту (ref=[номер коммита]), во втором - к тегу (ref=[номер тега])

## Задание 2

**Настройте remote state с встроенными блокировками**

Создаем в проекте каталог backend. Переносим туда код создания бакета из предыдущего ДЗ, поднимаем бакет:

<img width="241" height="318" alt="image" src="https://github.com/user-attachments/assets/38a4a18d-3fd9-434f-b907-c0e4f953fb8c" />

<img width="1077" height="176" alt="image" src="https://github.com/user-attachments/assets/a4cb8a66-61f1-4a75-9381-9c92adc53d8f" />

Получаем ключ доступа для моего сервисного аккаунта и добавляем его в переменную окружения, чтобы s3 мог его использовать:

<img width="946" height="172" alt="image" src="https://github.com/user-attachments/assets/cdb0ed6a-07a4-472a-8008-517186bfc1dd" />

<img width="1052" height="50" alt="image" src="https://github.com/user-attachments/assets/bbcda4cb-0072-4c3d-aa40-276261723fc3" />

Добавляем state в бакет:

<img width="787" height="302" alt="image" src="https://github.com/user-attachments/assets/8b8dd100-3204-4bd4-a740-34b1c6578f84" />

<img width="802" height="301" alt="image" src="https://github.com/user-attachments/assets/3bf5bf29-a44f-4188-ac89-8af8fbec1e3b" />

Теперь при plan или apply в бакете создается объект блокировки:

<img width="1348" height="472" alt="image" src="https://github.com/user-attachments/assets/bcdfc994-af79-42b2-bde7-fde68d3e5ef1" />

Добавляем backend в модули vpc и vm, делаем terraform init -migrate-state:

<img width="550" height="502" alt="image" src="https://github.com/user-attachments/assets/f374607e-c885-4de2-bf8d-0e63a39a83b5" />

<img width="525" height="491" alt="image" src="https://github.com/user-attachments/assets/f2d67498-2fc3-4253-808c-c8405ef65bf4" />

<img width="672" height="166" alt="image" src="https://github.com/user-attachments/assets/90c66199-4266-44e5-b761-be962bb6bcdc" />

<img width="802" height="156" alt="image" src="https://github.com/user-attachments/assets/0d35de79-e261-42b5-9ffc-c7e0f80597d4" />

Результат:

<img width="988" height="347" alt="image" src="https://github.com/user-attachments/assets/b191d0cb-e509-484e-a6d4-1dfbc3c70c8d" />

**Закоммитьте в ветку 'terraform-05' все изменения.**

Коммит [тут](https://github.com/msiberian42/devops/commit/ed1483c2afa792f1cc08d71319d5e5e42ce30f80)

**Откройте в проекте terraform console, а в другом окне из этой же директории попробуйте запустить terraform apply.
Пришлите ответ об ошибке доступа к state (блокировка должна сработать автоматически).**

<img width="1047" height="486" alt="image" src="https://github.com/user-attachments/assets/b1e4be97-c6d2-4fd2-a5a2-a5d598e5b7b2" />

**Принудительно разблокируйте state командой terraform force-unlock <LOCK_ID>. Пришлите команду и вывод.**

<img width="917" height="283" alt="image" src="https://github.com/user-attachments/assets/295f3eaa-fbec-419b-9ae0-d935d556d920" />

## Задание 3

Pull request [тут](https://github.com/msiberian42/devops/pull/1)

## Задание 4

**Напишите переменные с валидацией и протестируйте их, заполнив default верными и неверными значениями. Предоставьте скриншоты проверок из terraform console.
type=string, description="ip-адрес" — проверка, что значение переменной содержит верный IP-адрес с помощью функций cidrhost() или regex(). Тесты: "192.168.0.1" и "1920.1680.0.1";
type=list(string), description="список ip-адресов" — проверка, что все адреса верны. Тесты: ["192.168.0.1", "1.1.1.1", "127.0.0.1"] и ["192.168.0.1", "1.1.1.1", "1270.0.0.1"].**

Переменная с одним значением:

<img width="1110" height="415" alt="image" src="https://github.com/user-attachments/assets/302a9bf9-c2ec-4f0f-a782-20f640b8b022" />

Переменная со списком:

<img width="1097" height="672" alt="image" src="https://github.com/user-attachments/assets/d551afe9-26c0-48e8-971e-e52919208706" />

С правильными значениями:

<img width="575" height="92" alt="image" src="https://github.com/user-attachments/assets/08bc6ce9-af81-405b-8a67-3ac142680114" />

С неправильными:

<img width="711" height="362" alt="image" src="https://github.com/user-attachments/assets/eef086fd-41a4-479a-8ead-421749bbde1a" />

<img width="707" height="346" alt="image" src="https://github.com/user-attachments/assets/a5feb154-6e14-4b18-a761-c7e534793036" />

## Задание 5



