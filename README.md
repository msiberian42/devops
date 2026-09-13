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


