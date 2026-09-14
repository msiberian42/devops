# Домашнее задание к занятию «Основы Terraform. Yandex Cloud»

## Задание 1

**4. Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ищите внимательно, посимвольно. Ответьте, в чём заключается их суть.**

Добавляем значения переменных cloud_id и folder_id в personal.auto.tfvars. Публичный ssh тоже можно прописать в этом файле вместо файла variables.tf.

Ошибка 1:

<img width="1352" height="228" alt="image" src="https://github.com/user-attachments/assets/b125291e-0fd0-49f0-bb8b-00f107a29fe9" />

Переменная Service_account_key_file ожидает путь к JSON-файлу, а file() возвращает содержимое файла. Можно положить authorized_key.json в папку проекта и обязательно добавить его в гитигнор, чтобы ключ не утек через репозиторий. Тогда эта строчка будет выглядеть так:

<img width="655" height="177" alt="image" src="https://github.com/user-attachments/assets/0c391f53-b95d-4b43-9cc4-5a6393a959a0" />

Ошибка 2:

<img width="1372" height="208" alt="image" src="https://github.com/user-attachments/assets/2154a79a-6f05-4d34-90cc-d1d74d35ec37" />

Платформы с именем "standart-v4" в yandex cloud не существует. Есть платформа "standard-v3".

Ошибка 3:

<img width="1361" height="182" alt="image" src="https://github.com/user-attachments/assets/f5797c71-de59-4bd9-a3da-b5937e0a1883" />

Для платформы "standard-v3" можно выбрать только 20, 50 или 100 гарантированной доли CPU. Для экономии выбираем 20.

Ошибка 4:

<img width="1361" height="177" alt="image" src="https://github.com/user-attachments/assets/e3fa5841-87ca-431e-b0b8-25ceab4bfdd1" />

Для платформы "standard-v3" можно выбрать только 2 или 4 ядра. Для экономии выбираем 2.

Итоговые настройки:

<img width="493" height="208" alt="image" src="https://github.com/user-attachments/assets/a618e81b-0bba-4ed1-a869-86a604537bea" />

**5. Подключитесь к консоли ВМ через ssh и выполните команду curl ifconfig.me**

Результат команды:

<img width="450" height="61" alt="image" src="https://github.com/user-attachments/assets/221958d7-5a92-4ee3-93a4-89ae78835dc5" />

В личном кабинета:

<img width="1152" height="133" alt="image" src="https://github.com/user-attachments/assets/278e7c1a-4c5b-4898-bd2c-b63fb17afd08" />

**6. Ответьте, как в процессе обучения могут пригодиться параметры preemptible = true и core_fraction=5 в параметрах ВМ.**

Эти параметры существенно сокращают стоимость ВМ. Это полезно, поскольку от учебной ВМ не требуются высокая надежность и стабильная работа. Параметр preemptible = true создаёт прерываемую виртуальную машину. Yandex Cloud может принудительно остановить такую ВМ после 24 часов работы.
Параметр core_fraction = 5 ограничивает гарантированную долю CPU до 5% от производительности виртуального ядра.

## Задание 2

**1. Замените все хардкод-значения для ресурсов yandex_compute_image и yandex_compute_instance на отдельные переменные. К названиям переменных ВМ добавьте в начало префикс vm_web_ . Пример: vm_web_name.**

<img width="621" height="732" alt="image" src="https://github.com/user-attachments/assets/27ab94c4-30b1-4a87-947a-bf96f3d6744b" />

**2. Объявите нужные переменные в файле variables.tf, обязательно указывайте тип переменной. Заполните их default прежними значениями из main.tf.**

<img width="448" height="607" alt="image" src="https://github.com/user-attachments/assets/c2785c5f-9f4c-457d-8198-cc3bdb6fbeaa" />

<img width="423" height="468" alt="image" src="https://github.com/user-attachments/assets/907fd0a6-c543-47d3-9edd-d58441775e41" />

**3. Проверьте terraform plan. Изменений быть не должно.**

<img width="541" height="40" alt="image" src="https://github.com/user-attachments/assets/578ec0ca-7716-4470-ac05-c9b2ac8cee19" />

## Задание 3

Переменные:

<img width="381" height="756" alt="image" src="https://github.com/user-attachments/assets/aa5af5c8-b445-401f-8a25-e537bed1d59c" />

<img width="387" height="362" alt="image" src="https://github.com/user-attachments/assets/264ea372-bc74-49dc-b7f2-862199b214ad" />

Ресурс db:

<img width="587" height="703" alt="image" src="https://github.com/user-attachments/assets/f1664caa-1b68-46c4-ad87-642068fd7eaf" />

Подсеть db:

<img width="502" height="162" alt="image" src="https://github.com/user-attachments/assets/36cfbda2-66e8-41a5-b8db-54437e8ca0d8" />

Результат:

<img width="546" height="46" alt="image" src="https://github.com/user-attachments/assets/bdb5eadb-3f86-491d-813c-0111622b1936" />

<img width="1003" height="182" alt="image" src="https://github.com/user-attachments/assets/39efc11b-00cd-4a61-8f5d-6e4901bbce4d" />

## Задание 4

**Объявите в файле outputs.tf один output , содержащий: instance_name, external_ip, fqdn для каждой из ВМ в удобном лично для вас формате.(без хардкода!!!)
Примените изменения.**

Файл outputs.tf:

<img width="958" height="442" alt="image" src="https://github.com/user-attachments/assets/5d251d5f-b6ca-467d-a140-a360acada659" />

Вывод команды terraform output:

<img width="585" height="328" alt="image" src="https://github.com/user-attachments/assets/ce9f7836-8d24-48bd-a5fc-2af631d6d40f" />

## Задание 5

**В файле locals.tf опишите в одном local-блоке имя каждой ВМ, используйте интерполяцию ${..} с НЕСКОЛЬКИМИ переменными по примеру из лекции.
Замените переменные внутри ресурса ВМ на созданные вами local-переменные.
Примените изменения.**

Файл locals.tf:

<img width="576" height="132" alt="image" src="https://github.com/user-attachments/assets/2bc00dc2-769c-4faf-a6c7-526c8bafe43b" />

Новое дефолтное имя переменной vpc_name:

<img width="448" height="127" alt="image" src="https://github.com/user-attachments/assets/cdde4e06-c3c2-4098-8bab-30fb173c2a43" />

Новые дефолтные имена для платформ:

<img width="293" height="97" alt="image" src="https://github.com/user-attachments/assets/a798bebc-8c57-4112-81e8-ac87156597bc" />

<img width="276" height="107" alt="image" src="https://github.com/user-attachments/assets/ae50430b-df6e-4483-90f8-37114d29571e" />

В имени ресурсов меняем var на local:

<img width="491" height="82" alt="image" src="https://github.com/user-attachments/assets/077a8768-bfbf-4ed1-a7db-c1c444b2b82a" />

<img width="426" height="118" alt="image" src="https://github.com/user-attachments/assets/700d3f50-7e0e-4677-9eb9-12baf564e8db" />

Результат выполнение команды apply:

<img width="556" height="55" alt="image" src="https://github.com/user-attachments/assets/6cd1a4bf-fbe1-4fa7-b5ab-06db50978e05" />

## Задание 6

**1. Вместо использования трёх переменных ".._cores",".._memory",".._core_fraction" в блоке resources {...}, объедините их в единую map-переменную vms_resources и внутри неё конфиги обеих ВМ в виде вложенного map(object).**

Новая переменная vms_resources:

<img width="267" height="501" alt="image" src="https://github.com/user-attachments/assets/a985a26a-1f41-4d7b-a143-a8aef50fe835" />

Изменения в main.tf:

<img width="577" height="186" alt="image" src="https://github.com/user-attachments/assets/a2e10ab6-cd37-4a11-9876-8b7a875882ce" />

<img width="567" height="232" alt="image" src="https://github.com/user-attachments/assets/7c2eabed-0a68-4cc9-9391-5433cfa17d47" />





