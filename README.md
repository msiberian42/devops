## Домашнее задание к занятию 1 «Введение в Ansible»

**1. Попробуйте запустить playbook на окружении из test.yml, зафиксируйте значение, которое имеет факт some_fact для указанного хоста при выполнении playbook.**

Значение some_fact - 12Ж

<img width="535" height="322" alt="image" src="https://github.com/user-attachments/assets/e958dadd-62e5-4fc2-9ca8-76ba336d5603" />

<img width="443" height="215" alt="image" src="https://github.com/user-attachments/assets/bd163f51-6c3d-414f-8e05-280cc8170064" />

**2. Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на all default fact.**

Меняем значение в файле group_vars/all/examp.yml:

<img width="476" height="127" alt="image" src="https://github.com/user-attachments/assets/fbeee95b-a43c-4c9c-8eca-3f460428b1c8" />

<img width="427" height="195" alt="image" src="https://github.com/user-attachments/assets/afbf13ad-b4e4-4b08-9949-5218c649e04e" />

**4. Проведите запуск playbook на окружении из prod.yml. Зафиксируйте полученные значения some_fact для каждого из managed host.**

<img width="222" height="203" alt="image" src="https://github.com/user-attachments/assets/c33b6f59-9d58-49bb-8590-255f76996755" />

**5. Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact.**









