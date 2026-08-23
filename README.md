# Домашнее задание к занятию 5. «Практическое применение Docker»

## Задача 2
Результаты сканирования приложены в файле [vulnerabilities.csv](vulnerabilities.csv)





## Задача 2
**Запустите ваш образ custom-nginx:1.0.0 командой docker run в соответвии с требованиями: имя контейнера "ФИО-custom-nginx-t2", контейнер работает в фоне, контейнер опубликован на порту хост системы 127.0.0.1:8080**

<img width="1016" height="182" alt="image" src="https://github.com/user-attachments/assets/46e3efc1-96f8-40f9-a1e5-4288c4f667e7" />

**Не удаляя, переименуйте контейнер в "custom-nginx-t2"**

<img width="1026" height="122" alt="image" src="https://github.com/user-attachments/assets/b25fd4ab-4a22-47fa-8575-d0fe962419cf" />

**Выполните команду date +"%d-%m-%Y %T.%N %Z" ; sleep 0.150 ; docker ps ; ss -tlpn | grep 127.0.0.1:8080  ; docker logs custom-nginx-t2 -n1 ; docker exec -it custom-nginx-t2 base64 /usr/share/nginx/html/index.html**

<img width="1030" height="247" alt="image" src="https://github.com/user-attachments/assets/6e853334-88dd-438b-88dc-0a8372160c0c" />

**Убедитесь с помощью curl или веб браузера, что индекс-страница доступна.**

<img width="380" height="202" alt="image" src="https://github.com/user-attachments/assets/83aac136-4df8-4ae9-926d-15c6a6600df4" />


