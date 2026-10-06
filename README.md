## Домашнее задание к занятию 5 «Тестирование roles»

# Molecule

**1. Запустите molecule test -s ubuntu_xenial (или с любым другим сценарием, не имеет значения) внутри корневой директории clickhouse-role, посмотрите на вывод команды.**

<img width="1462" height="427" alt="image" src="https://github.com/user-attachments/assets/71e25aa6-05b7-4278-95fe-2b541355c391" />

<img width="1191" height="541" alt="image" src="https://github.com/user-attachments/assets/c052b4be-ec13-403e-8c62-ad7fae383fbc" />

<img width="1176" height="383" alt="image" src="https://github.com/user-attachments/assets/98fc6f71-9ded-4e13-af9f-6999956be033" />

**2. Перейдите в каталог с ролью vector-role и создайте сценарий тестирования по умолчанию при помощи molecule init scenario --driver-name docker.**

<img width="986" height="72" alt="image" src="https://github.com/user-attachments/assets/fc31edc3-2b14-43f6-905f-7fee30fb6f6c" />

**3. Добавьте несколько разных дистрибутивов (oraclelinux:8, ubuntu:latest) для инстансов и протестируйте роль, исправьте найденные ошибки, если они есть.**

<img width="492" height="506" alt="image" src="https://github.com/user-attachments/assets/1205a0c0-741a-452a-8aab-ccbca2041ddd" />

<img width="891" height="366" alt="image" src="https://github.com/user-attachments/assets/607c7515-2a69-4178-aaa4-60814509ed64" />

**4. Добавьте несколько assert в verify.yml-файл для проверки работоспособности vector-role (проверка, что конфиг валидный, проверка успешности запуска и др.).**

<img width="526" height="476" alt="image" src="https://github.com/user-attachments/assets/1575c600-f45d-4d6c-b08a-808faa64bb81" />

<img width="532" height="563" alt="image" src="https://github.com/user-attachments/assets/1cda8afc-0505-4e25-af6e-0e9d9f694cdb" />

<img width="611" height="513" alt="image" src="https://github.com/user-attachments/assets/5a390cd5-2860-4404-95e8-ff6ccc144a3b" />

**5. Запустите тестирование роли повторно и проверьте, что оно прошло успешно.**

<img width="912" height="366" alt="image" src="https://github.com/user-attachments/assets/3637b271-49bc-4b58-adda-e01db0da7099" />

**6. Добавьте новый тег на коммит с рабочим сценарием в соответствии с семантическим версионированием.**

[Релиз](https://github.com/msiberian42/vector-role/releases/tag/1.1)

# Tox

**1. Добавьте в директорию с vector-role файлы из директории.
2. Запустите docker run --privileged=True -v <path_to_repo>:/opt/vector-role -w /opt/vector-role -it aragast/netology:latest /bin/bash, где path_to_repo — путь до корня репозитория с vector-role на вашей файловой системе.
3. Внутри контейнера выполните команду tox, посмотрите на вывод.
4. Создайте облегчённый сценарий для molecule с драйвером molecule_podman. Проверьте его на исполнимость.**

<img width="921" height="442" alt="image" src="https://github.com/user-attachments/assets/a7b7e99a-316d-4203-b197-ad264beba25e" />

**5. Пропишите правильную команду в tox.ini, чтобы запускался облегчённый сценарий.**

<img width="652" height="95" alt="image" src="https://github.com/user-attachments/assets/f38c6a0f-c1c6-49b5-86f8-abb9c474db84" />

**6. Запустите команду tox. Убедитесь, что всё отработало успешно.**

<img width="332" height="50" alt="image" src="https://github.com/user-attachments/assets/e17d1e12-effe-49b1-ad0d-a72e4be1612b" />

<img width="335" height="22" alt="image" src="https://github.com/user-attachments/assets/da59734b-ff7b-4d1f-a945-43619747ebd4" />

<img width="321" height="26" alt="image" src="https://github.com/user-attachments/assets/de751145-3e16-4ef8-bd68-8de791bb5b2a" />

**7. Добавьте новый тег на коммит с рабочим сценарием в соответствии с семантическим версионированием.**

[Релиз](https://github.com/msiberian42/vector-role/releases/tag/1.3)

# LightHouse

**1. Проделайте схожие манипуляции для создания роли LightHouse.**

[Релиз](https://github.com/msiberian42/lighthouse-role/releases/tag/1.1)

**2. Создайте сценарий внутри любой из своих ролей, который умеет поднимать весь стек при помощи всех ролей. 3. Убедитесь в работоспособности своего стека. Создайте отдельный verify.yml, который будет проверять работоспособность интеграции всех инструментов между ними.**

<img width="846" height="307" alt="image" src="https://github.com/user-attachments/assets/4f235416-6ce1-4617-b9a5-e005321fd920" />

**4. Выложите свои roles в репозитории.**

[clickhouse + playbook](https://github.com/msiberian42/clickhouse-role/releases/tag/1.0)
[vector](https://github.com/msiberian42/vector-role/releases/tag/1.3)
[lighthouse](https://github.com/msiberian42/lighthouse-role/releases/tag/1.1)
