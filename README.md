# Домашнее задание к занятию «Продвинутые методы работы с Terraform»

## Задание 1

**1. Возьмите из демонстрации к лекции готовый код для создания с помощью двух вызовов remote-модуля -> двух ВМ, относящихся к разным проектам(marketing и analytics) используйте labels для обозначения принадлежности. В файле cloud-init.yml необходимо использовать переменную для ssh-ключа вместо хардкода. Передайте ssh-ключ в функцию template_file в блоке vars ={} . Воспользуйтесь примером. Обратите внимание, что ssh-authorized-keys принимает в себя список, а не строку.**

Использование remote-модуля:

<img width="883" height="536" alt="image" src="https://github.com/user-attachments/assets/364df45a-c1b4-4787-b8c7-6b443f53b5fc" />

<img width="877" height="532" alt="image" src="https://github.com/user-attachments/assets/07e65d5e-7d10-48bb-8e6b-96e175a79fe6" />

Передача ssh:

<img width="377" height="217" alt="image" src="https://github.com/user-attachments/assets/ce69cb35-e0a7-4a4f-8052-60d559773e5a" />

<img width="430" height="207" alt="image" src="https://github.com/user-attachments/assets/39238fee-61b0-47b2-a250-ca9a03983128" />


Сам ключ прописан в personal.auto.tfvars

## Задание 2

**2. Добавьте в файл cloud-init.yml установку nginx.**

В yaml файле из примера прописана установка и настройка nginx:

<img width="572" height="327" alt="image" src="https://github.com/user-attachments/assets/84583774-bdd7-41bf-bc74-ef22ba8135f3" />

<img width="775" height="562" alt="image" src="https://github.com/user-attachments/assets/0c2a4706-7baf-4fb3-a170-021772808e1f" />

## Задание 3

**3. Предоставьте скриншот подключения к консоли и вывод команды sudo nginx -t, скриншот консоли ВМ yandex cloud с их метками. Откройте terraform console и предоставьте скриншот содержимого модуля. Пример: > module.marketing_vm**









