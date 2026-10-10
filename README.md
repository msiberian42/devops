## Домашнее задание к занятию 6 «Создание собственных модулей»

**1. В виртуальном окружении создайте новый my_own_module.py файл. 
2. Наполните его содержимым 
3. Заполните файл в соответствии с требованиями Ansible так, чтобы он выполнял основную задачу: module должен создавать текстовый файл на удалённом хосте по пути, определённом в параметре path, с содержимым, определённым в параметре content. 4. Проверьте module на исполняемость локально.**

<img width="538" height="181" alt="image" src="https://github.com/user-attachments/assets/aa632db6-0c61-40d8-a033-30e9ae273d89" />

<img width="813" height="186" alt="image" src="https://github.com/user-attachments/assets/8866fc86-48a3-4fcb-807e-4bd28a576612" />

**5. Напишите single task playbook и используйте module в нём. 6. Проверьте через playbook на идемпотентность.**

<img width="497" height="273" alt="image" src="https://github.com/user-attachments/assets/e7fae715-7722-4aa2-a546-5f9ce1b5e590" />

<img width="937" height="405" alt="image" src="https://github.com/user-attachments/assets/0e6fab96-6ec1-4abd-a065-6692ea128bb1" />

<img width="953" height="52" alt="image" src="https://github.com/user-attachments/assets/d931f2f3-ded2-4fff-959e-ac12cd639216" />

<img width="811" height="452" alt="image" src="https://github.com/user-attachments/assets/77a7f7b0-eaad-46e0-b601-6e7ec39e3723" />

**8. Инициализируйте новую collection: ansible-galaxy collection init my_own_namespace.yandex_cloud_elk. 9. В эту collection перенесите свой module в соответствующую директорию. 10. Single task playbook преобразуйте в single task role и перенесите в collection. У role должны быть default всех параметров module. 11. Создайте playbook для использования этой role. 12. Заполните всю документацию по collection, выложите в свой репозиторий, поставьте тег 1.0.0 на этот коммит.**

[Релиз](https://github.com/msiberian42/my_own_collection/releases/tag/1.0.0)

**13. Создайте .tar.gz этой collection: ansible-galaxy collection build в корневой директории collection. 14. Создайте ещё одну директорию любого наименования, перенесите туда single task playbook и архив c collection. 15. Установите collection из локального архива: ansible-galaxy collection install <archivename>.tar.gz.**

<img width="790" height="197" alt="image" src="https://github.com/user-attachments/assets/d9813578-31d7-4486-84c7-a815a90415fb" />

**16. Запустите playbook, убедитесь, что он работает.**

<img width="947" height="370" alt="image" src="https://github.com/user-attachments/assets/3b7f8da3-e0d6-41a8-88a3-f1b9b3ded188" />

<img width="938" height="427" alt="image" src="https://github.com/user-attachments/assets/7d63f19e-6801-46bb-97cc-57dd904bc3f7" />






