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

**Добавьте факты в group_vars каждой из групп хостов так, чтобы для some_fact получились значения: для deb — deb default fact, для el — el default fact. Повторите запуск playbook на окружении prod.yml. Убедитесь, что выдаются корректные значения для всех хостов.**

<img width="407" height="157" alt="image" src="https://github.com/user-attachments/assets/6eeb777b-f061-450f-9ef9-c05e7f62c05d" />

<img width="435" height="138" alt="image" src="https://github.com/user-attachments/assets/47c0984e-eb58-455e-bc20-14fc427daa2e" />

<img width="383" height="190" alt="image" src="https://github.com/user-attachments/assets/ff3d37f9-0d03-4615-8a80-97a13e10c29c" />

**При помощи ansible-vault зашифруйте факты в group_vars/deb и group_vars/el с паролем netology. Запустите playbook на окружении prod.yml. При запуске ansible должен запросить у вас пароль. Убедитесь в работоспособности.**

<img width="1063" height="175" alt="image" src="https://github.com/user-attachments/assets/3839e60c-486e-45cf-be3f-3e09396ac937" />

Запускаем командой sudo ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass

<img width="427" height="203" alt="image" src="https://github.com/user-attachments/assets/343d2bde-afcc-497c-8107-a082130b6454" />

**Посмотрите при помощи ansible-doc список плагинов для подключения. Выберите подходящий для работы на control node. В prod.yml добавьте новую группу хостов с именем local, в ней разместите localhost с необходимым типом подключения.**

Выбираем ansible.builtin.local:

<img width="942" height="137" alt="image" src="https://github.com/user-attachments/assets/4a85e171-8512-4607-9301-c9058511b08f" />








