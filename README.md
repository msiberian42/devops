# Домашнее задание к занятию 4 «Оркестрация группой Docker контейнеров на примере Docker Compose»

## Задача 1
https://hub.docker.com/repository/docker/siberian42/custom-nginx/general

## Задача 2
**Запустите ваш образ custom-nginx:1.0.0 командой docker run в соответвии с требованиями: имя контейнера "ФИО-custom-nginx-t2", контейнер работает в фоне, контейнер опубликован на порту хост системы 127.0.0.1:8080**

<img width="1016" height="182" alt="image" src="https://github.com/user-attachments/assets/46e3efc1-96f8-40f9-a1e5-4288c4f667e7" />

**Не удаляя, переименуйте контейнер в "custom-nginx-t2"**

<img width="1026" height="122" alt="image" src="https://github.com/user-attachments/assets/b25fd4ab-4a22-47fa-8575-d0fe962419cf" />

**Выполните команду date +"%d-%m-%Y %T.%N %Z" ; sleep 0.150 ; docker ps ; ss -tlpn | grep 127.0.0.1:8080  ; docker logs custom-nginx-t2 -n1 ; docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html**

<img width="1030" height="247" alt="image" src="https://github.com/user-attachments/assets/6e853334-88dd-438b-88dc-0a8372160c0c" />

**Убедитесь с помощью curl или веб браузера, что индекс-страница доступна.**

<img width="380" height="202" alt="image" src="https://github.com/user-attachments/assets/83aac136-4df8-4ae9-926d-15c6a6600df4" />

## Задача 3

**Подключитесь к контейнеру и нажмите комбинацию Ctrl-C. Выполните docker ps -a и объясните своими словами почему контейнер остановился.**

<img width="1111" height="367" alt="image" src="https://github.com/user-attachments/assets/f3c4eab0-d470-4ce7-8276-7d67511603a6" />

Нажатие Ctrl + C отправляет сигнал завершения основному процессу и остановливает контейнер. Чтобы выйти из этого режима, не останавливая контейнер, можно закрыть терминал подключения по ssh и зайти через новый. Но лучше подключаться через docker exec и выходить командой exit.

**Перезапустите контейнер. Зайдите в интерактивный терминал контейнера "custom-nginx-t2" с оболочкой bash. Установите любимый текстовый редактор(vim, nano итд) с помощью apt-get.**

<img width="928" height="396" alt="image" src="https://github.com/user-attachments/assets/ea17826f-b72f-4fae-b18a-5935e33173fd" />

<img width="1537" height="741" alt="image" src="https://github.com/user-attachments/assets/c9686ade-9bab-458c-82de-9c881955c20e" />

**Отредактируйте файл "/etc/nginx/conf.d/default.conf", заменив порт "listen 80" на "listen 81".**

<img width="591" height="132" alt="image" src="https://github.com/user-attachments/assets/dacce411-e449-4bd6-9165-ad55bf0ee04c" />

<img width="657" height="456" alt="image" src="https://github.com/user-attachments/assets/28ff008e-a56e-471f-8d6c-fb584f2d1cef" />

**Запомните(!) и выполните команду nginx -s reload, а затем внутри контейнера curl http://127.0.0.1:80 ; curl http://127.0.0.1:81. Выйдите из контейнера, набрав в консоли exit или Ctrl-D.**

<img width="847" height="311" alt="image" src="https://github.com/user-attachments/assets/a6627e2c-70bd-4a3e-90c3-62238b3d04e2" />

**Проверьте вывод команд: ss -tlpn | grep 127.0.0.1:8080 , docker port custom-nginx-t2, curl http://127.0.0.1:8080. Кратко объясните суть возникшей проблемы.**

<img width="490" height="137" alt="image" src="https://github.com/user-attachments/assets/b925dad8-4aea-4c84-b0d4-69a851880dbc" />

При создании контейнера мы настроили проброс порта с 8080 (хост) на 80 (контейнер). В конфиге мы поменяли порт на 81, соответственно порт 80 теперь никто не слушает. Докер получает запрос на порт 8080 и пытается перенаправить его на порт 80, но, поскольку там теперь направлять его некому, это соединение отбрасывается.

**Попробуйте самостоятельно исправить конфигурацию контейнера, используя доступные источники в интернете. Не изменяйте конфигурацию nginx и не удаляйте контейнер. Останавливать контейнер можно.**

<img width="845" height="362" alt="image" src="https://github.com/user-attachments/assets/98de6a4c-25d3-4ec2-b10d-cce1e4b6fd39" />

<img width="742" height="337" alt="image" src="https://github.com/user-attachments/assets/edf9741b-cfdf-40b4-850f-3b220879abc1" />

<img width="482" height="328" alt="image" src="https://github.com/user-attachments/assets/a997c2c3-ca68-4c4d-b758-5f722638b7b0" />

<img width="1027" height="360" alt="image" src="https://github.com/user-attachments/assets/f4681bbf-c84e-4d19-996e-d2b5ff5cc9ab" />

Останавливаем контейнер и службу docker. Далее открываем файл /var/lib/docker/containers/<ID>/hostconfig.json, ищем там блок PortBindings и меняем порт с 80 на 81. То же самое делаем в файле config.v2.json в блоке ExposedPorts. Запускаем докер и контейнер и убеждаемся, что новый порт проброшен.

**Удалите запущенный контейнер "custom-nginx-t2", не останавливая его.**

<img width="668" height="96" alt="image" src="https://github.com/user-attachments/assets/327696a4-3889-4498-b0d2-bfacea90e5df" />

## Задача 4
**Запустите первый контейнер из образа centos c любым тегом в фоновом режиме, подключив папку текущий рабочий каталог на хостовой машине в /data контейнера, используя ключ -v. Запустите второй контейнер из образа debian в фоновом режиме, подключив текущий рабочий каталог в /data контейнера.**

<img width="1095" height="171" alt="image" src="https://github.com/user-attachments/assets/d2eb42bf-2c8a-47e8-b467-7106a3de291c" />

**Подключитесь к первому контейнеру с помощью docker exec и создайте текстовый файл любого содержания в /data. Добавьте ещё один файл в текущий каталог $(pwd) на хостовой машине. Подключитесь во второй контейнер и отобразите листинг и содержание файлов в /data контейнера.**

<img width="823" height="512" alt="image" src="https://github.com/user-attachments/assets/062142cd-eb64-4740-bb40-4ac7f8af1b7b" />

## Задача 5

**Создайте отдельную директорию(например /tmp/netology/docker/task5) и 2 файла внутри него. Выполните команду "docker compose up -d". Какой из файлов был запущен и почему?**

<img width="1106" height="437" alt="image" src="https://github.com/user-attachments/assets/11853c35-99d5-4417-b19d-4efc0092ca07" />

В случае наличия в директории двух файлов - compose.yaml и docker-compose.yaml, docker compose выбирает compose.yaml.

**Отредактируйте файл compose.yaml так, чтобы были запущенны оба файла.**

<img width="661" height="292" alt="image" src="https://github.com/user-attachments/assets/511f0377-105d-4d82-9c86-507f94f58652" />

<img width="1113" height="306" alt="image" src="https://github.com/user-attachments/assets/f60a5416-32ba-4a75-b8ad-7ea9e153e532" />

Добавляем в файл compose.yaml блок include со вторым файлом. Теперь отрабатывают оба файла.

**Выполните в консоли вашей хостовой ОС необходимые команды чтобы залить образ custom-nginx как custom-nginx:latest в запущенное вами, локальное registry.**

<img width="970" height="403" alt="image" src="https://github.com/user-attachments/assets/2613263e-11f2-4e21-ba11-80c164d7fd37" />

<img width="957" height="567" alt="image" src="https://github.com/user-attachments/assets/81fa7918-0747-4220-8a1f-7124dd9494e5" />

Задаем образу дополнительный тег localhost:5000/custom-nginx:latest. Если в начале тега стоит адрес и порт, докер интерпретирует это как адрес регистра, в который его нужно пушить. Удаляем образы custom-nginx:latest и localhost:5000/custom-nginx:latest и скачиваем образ из регистра, чтобы проверить, что все работает.

**Откройте страницу "https://127.0.0.1:9000" и произведите начальную настройку portainer.(логин и пароль администратора). Откройте страницу "http://127.0.0.1:9000/#!/home", выберите ваше local окружение. Перейдите на вкладку "stacks" и в "web editor" задеплойте следующий компоуз**

<img width="1057" height="637" alt="image" src="https://github.com/user-attachments/assets/880fe0fb-1330-4f69-8f06-eb53ff3b0ff5" />

<img width="1277" height="782" alt="image" src="https://github.com/user-attachments/assets/b93fb19e-d802-44db-b68d-ac5212f75caf" />

<img width="663" height="758" alt="image" src="https://github.com/user-attachments/assets/bf60ccd3-f216-440a-82a4-eae87c54d745" />

**Перейдите на страницу "http://127.0.0.1:9000/#!/2/docker/containers", выберите контейнер с nginx и нажмите на кнопку "inspect". В представлении <> Tree разверните поле "Config" и сделайте скриншот от поля "AppArmorProfile" до "Driver".**

<img width="685" height="852" alt="image" src="https://github.com/user-attachments/assets/7450c804-f297-4b45-b641-b7bcf19df975" />

<img width="988" height="732" alt="image" src="https://github.com/user-attachments/assets/34eef1fd-93b6-4fcd-a2de-5a9f1e95f60a" />

**Удалите любой из манифестов компоуза(например compose.yaml). Выполните команду "docker compose up -d". Прочитайте warning, объясните суть предупреждения и выполните предложенное действие. Погасите compose-проект ОДНОЙ(обязательно!!) командой.**

<img width="971" height="465" alt="image" src="https://github.com/user-attachments/assets/93698440-0ffb-40d4-b9fe-2588f94d7cc7" />

Это предупреждение означает, что Docker Compose нашел запущенный контейнер, который относится к проекту, но не описан в файле compose.yaml. Контейнер считается осиротевшим (orphan), поскольку сам контейнер есть, а его описания в compose файле нет.

