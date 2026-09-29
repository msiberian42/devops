## Домашнее задание к занятию 3 «Использование Ansible»

**1. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает LightHouse.
2. При создании tasks рекомендую использовать модули: get_url, template, yum, apt.
3. Tasks должны: скачать статику LightHouse, установить Nginx или любой другой веб-сервер, настроить его конфиг для открытия LightHouse, запустить веб-сервер.**

<img width="481" height="565" alt="image" src="https://github.com/user-attachments/assets/a13447ec-42d5-4579-97d6-e0608bbb36b6" />

<img width="463" height="568" alt="image" src="https://github.com/user-attachments/assets/58795c98-48e7-47d8-b957-94528a972777" />

<img width="513" height="310" alt="image" src="https://github.com/user-attachments/assets/ef61027c-50c5-457f-9975-0180959ba264" />

**4. Подготовьте свой inventory-файл prod.yml.**

<img width="687" height="505" alt="image" src="https://github.com/user-attachments/assets/3864d7f8-7f03-44dd-93d3-2d0ef81ff2c2" />

Сервис разворачивается:

<img width="1086" height="117" alt="image" src="https://github.com/user-attachments/assets/498c85c3-830c-4bbd-8b3e-7a60db93d710" />

**5. Запустите ansible-lint site.yml и исправьте ошибки, если они есть.**

<img width="717" height="243" alt="image" src="https://github.com/user-attachments/assets/a7297e6f-28b7-458f-b2d8-29e915f20a92" />

Не хватает переноса строки в конце site.yml

<img width="705" height="67" alt="image" src="https://github.com/user-attachments/assets/a627569d-1145-419c-bf56-294db33280ad" />

**6. Попробуйте запустить playbook на этом окружении с флагом --check.**

<img width="1075" height="116" alt="image" src="https://github.com/user-attachments/assets/6cbdff38-3551-4034-891b-dd4d77950fec" />

**7. Запустите playbook на prod.yml окружении с флагом --diff. Убедитесь, что изменения на системе произведены.**

<img width="1065" height="110" alt="image" src="https://github.com/user-attachments/assets/3d369cc6-78f3-4c72-a24a-abf81357ec8d" />

**8. Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен.**

<img width="1052" height="107" alt="image" src="https://github.com/user-attachments/assets/9fd37d1a-57ec-4de4-8da2-30adfa723e67" />

**9. Подготовьте README.md-файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги.**



## Проверка работы сервисов

ClickHouse:

<img width="922" height="117" alt="image" src="https://github.com/user-attachments/assets/8a01fbe4-e596-4cfd-9cdb-316d18ec237d" />

<img width="565" height="233" alt="image" src="https://github.com/user-attachments/assets/6e6b4c51-539c-44da-9c55-2f27848e0ff5" />

Vector:

<img width="791" height="147" alt="image" src="https://github.com/user-attachments/assets/5a9705a3-cc0a-4881-b885-8890c81a1857" />

<img width="710" height="137" alt="image" src="https://github.com/user-attachments/assets/1428759a-8af3-45bc-955c-41bd35a6b08c" />

LightHouse:

<img width="836" height="417" alt="image" src="https://github.com/user-attachments/assets/a17bd5ed-007b-4131-8941-35a8867bf036" />





