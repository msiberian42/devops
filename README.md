## Домашнее задание к занятию 15 «Система сбора логов Elastic Stack»

### Задание 1

**Logstash следует сконфигурировать для приёма по tcp json-сообщений.**

Добавляем прием json на порт 5044:

<img width="392" height="320" alt="image" src="https://github.com/user-attachments/assets/51f4608b-832e-4da3-90c3-5b36df480c74" />

Вывод docker ps:

<img width="1307" height="338" alt="image" src="https://github.com/user-attachments/assets/59f03e4d-4eeb-41e6-bce2-33065c42042f" />

Интерфейса kibana:

<img width="1912" height="997" alt="image" src="https://github.com/user-attachments/assets/4d5bcb77-6739-4a7d-b2c1-dd6c9c4d0507" />

### Задание 2

**Перейдите в меню создания index-patterns в kibana и создайте несколько index-patterns из имеющихся.**

Создаем общий шаблон logstash:

<img width="1396" height="632" alt="image" src="https://github.com/user-attachments/assets/90303761-cd3d-4c64-8546-606000b053df" />

Получившиеся индексы:

<img width="1613" height="595" alt="image" src="https://github.com/user-attachments/assets/8607697f-26b2-4f8f-bc7c-c5bfbecef187" />

Discover:

<img width="1910" height="982" alt="image" src="https://github.com/user-attachments/assets/1e133b55-0ced-4860-8029-259176b20abd" />

<img width="902" height="496" alt="image" src="https://github.com/user-attachments/assets/27559e58-8974-4688-97b4-bd1a1d7dbbda" />

