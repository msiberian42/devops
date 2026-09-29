## Домашнее задание к занятию 2 «Работа с Playbook»

**1. Подготовьте свой inventory-файл prod.yml.**

<img width="633" height="362" alt="image" src="https://github.com/user-attachments/assets/2516c318-06bc-4c9f-83b9-b052efe8e28b" />

<img width="907" height="117" alt="image" src="https://github.com/user-attachments/assets/1c032997-a1c0-403b-897c-70d92e5e7f3f" />

**2. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает vector.**

<img width="1126" height="648" alt="image" src="https://github.com/user-attachments/assets/92902884-7b0a-4a4f-ab11-808656944303" />

<img width="522" height="487" alt="image" src="https://github.com/user-attachments/assets/4b476986-5934-4acc-a7e9-c281a5c931f3" />

**5. Запустите ansible-lint site.yml и исправьте ошибки, если они есть.**

1)

<img width="446" height="88" alt="image" src="https://github.com/user-attachments/assets/2c22e022-67b4-4ce0-aada-13614ec8175c" />

block считается таской и должен иметь имя:

<img width="495" height="191" alt="image" src="https://github.com/user-attachments/assets/31f37b92-6e3b-4d8b-a561-474d78ce39cc" />

2)

<img width="575" height="125" alt="image" src="https://github.com/user-attachments/assets/c04923b5-0252-467c-9c1d-a09c3a6bdce3" />

Нужно явно указать права в этом блоке:

<img width="630" height="191" alt="image" src="https://github.com/user-attachments/assets/94c69657-7247-4455-b029-72568feabaaa" />

3)

<img width="712" height="57" alt="image" src="https://github.com/user-attachments/assets/f96c8048-1302-446a-abe0-bfb42a34b5b2" />

Нужно использовать ansible.builtin.dnf вместо ansible.builtin.yum:

<img width="358" height="127" alt="image" src="https://github.com/user-attachments/assets/d04c8a61-abf9-4c4e-943d-20a0892fed8d" />

4)

<img width="710" height="65" alt="image" src="https://github.com/user-attachments/assets/bbc665f0-598a-49fa-8605-7ac95e9ddc29" />

Нужно написать так:

<img width="497" height="167" alt="image" src="https://github.com/user-attachments/assets/1e3b3120-c0a1-4528-beff-cd56f924f22f" />

<img width="1243" height="52" alt="image" src="https://github.com/user-attachments/assets/002e706c-d230-4c78-bcc2-5641a9a20994" />

**8.Повторно запустите playbook с флагом --diff и убедитесь, что playbook идемпотентен.**

<img width="1060" height="100" alt="image" src="https://github.com/user-attachments/assets/5d96abef-03df-44fc-a474-47ad53d768aa" />

<img width="793" height="141" alt="image" src="https://github.com/user-attachments/assets/9785cd5b-e348-46ff-b0b0-f0e48b428670" />

<img width="956" height="122" alt="image" src="https://github.com/user-attachments/assets/0c733094-9c91-436d-8475-2b69a7d56ba8" />

**10. Готовый playbook выложите в свой репозиторий, поставьте тег 08-ansible-02-playbook на фиксирующий коммит, в ответ предоставьте ссылку на него.**

[Коммит](https://github.com/msiberian42/ansible_hw2/releases/tag/08-ansible-02-playbook)

