## Домашнее задание к занятию 4 «Работа с roles»

**1. Создайте в старой версии playbook файл requirements.yml и заполните его содержимым**

<img width="702" height="157" alt="image" src="https://github.com/user-attachments/assets/7086a8dd-6a34-4ffb-83d2-55a6a895f615" />

**2. При помощи ansible-galaxy скачайте себе эту роль.**

<img width="948" height="92" alt="image" src="https://github.com/user-attachments/assets/a94aea5f-7fae-4d6f-ab37-7fefd384a78f" />

<img width="792" height="65" alt="image" src="https://github.com/user-attachments/assets/bba11813-55fe-42a6-9949-313243a27dfe" />

**3. Создайте новый каталог с ролью при помощи ansible-galaxy role init vector-role.
4. На основе tasks из старого playbook заполните новую role. Разнесите переменные между vars и default.
5. Перенести нужные шаблоны конфигов в templates.
6. Опишите в README.md обе роли и их параметры. Пример качественной документации ansible role по ссылке.
7. Повторите шаги 3–6 для LightHouse. Помните, что одна роль должна настраивать один продукт.
8. Выложите все roles в репозитории. Проставьте теги, используя семантическую нумерацию. Добавьте roles в requirements.yml в playbook.**

[Репозиторий vector](https://github.com/msiberian42/vector-role)

[readme vector](https://github.com/msiberian42/vector-role/blob/main/README.md)

[тег vector](https://github.com/msiberian42/vector-role/releases/tag/1.0)

[Репозиторий lighthouse](https://github.com/msiberian42/lighthouse-role)

[readme lighthouse](https://github.com/msiberian42/lighthouse-role/blob/main/README.md)

[тег lighthouse](https://github.com/msiberian42/lighthouse-role/releases/tag/1.0)

<img width="697" height="486" alt="image" src="https://github.com/user-attachments/assets/e21e936a-3d33-4542-a7a0-25bbe6e95487" />

**9. Переработайте playbook на использование roles. Не забудьте про зависимости LightHouse и возможности совмещения roles с tasks. Выложите playbook в репозиторий.**

<img width="1007" height="715" alt="image" src="https://github.com/user-attachments/assets/709234fb-e1bb-4344-baea-ce69c4591a09" />

[Репозиторий playbook](https://github.com/msiberian42/ansible_hw4/tree/main/playbook)


