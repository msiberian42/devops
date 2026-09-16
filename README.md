# Домашнее задание к занятию «Управляющие конструкции в коде Terraform»

## Задание 1

**Приложите скриншот входящих правил «Группы безопасности» в ЛК Yandex Cloud:**

<img width="1228" height="650" alt="image" src="https://github.com/user-attachments/assets/c1518686-07c4-4612-ace6-528dc99b9691" />

## Задание 2

**1. Создайте файл count-vm.tf. Опишите в нём создание двух одинаковых ВМ web-1 и web-2 (не web-0 и web-1) с минимальными параметрами, используя мета-аргумент count loop. Назначьте ВМ созданную в первом задании группу безопасности.(как это сделать узнайте в документации провайдера yandex/compute_instance )**

Цикл создания двух ВМ:

<img width="781" height="772" alt="image" src="https://github.com/user-attachments/assets/7aa1aab9-aca3-4a03-afe7-aeae0b7f798a" />

**2. Создайте файл for_each-vm.tf. Опишите в нём создание двух ВМ для баз данных с именами "main" и "replica" разных по cpu/ram/disk_volume , используя мета-аргумент for_each loop. Используйте для обеих ВМ одну общую переменную типа**

Переменная:

<img width="366" height="628" alt="image" src="https://github.com/user-attachments/assets/066df38a-c980-4e94-ae94-de6cf2588991" />

Цикл:

<img width="828" height="802" alt="image" src="https://github.com/user-attachments/assets/2f2d7213-e61b-4f30-8180-1163c397d6a8" />

**3. ВМ, описанные в файле count-vm.tf, должны создаваться после ВМ, описанных в файле for_each-vm.tf.**

В цикл count добавляем блок depends_on:

<img width="627" height="445" alt="image" src="https://github.com/user-attachments/assets/f4286a65-99c8-451a-81ad-3139e4736a94" />

**4. Используйте функцию file в local-переменной для считывания ключа ~/.ssh/id_rsa.pub и его последующего использования в блоке metadata, взятому из ДЗ 2**

<img width="737" height="140" alt="image" src="https://github.com/user-attachments/assets/80a4ae4b-bdd0-4418-8bb0-6cc7298ab8df" />

Меняем блок metadata в циклах count и for_each:

<img width="608" height="107" alt="image" src="https://github.com/user-attachments/assets/7dd17c58-835c-4aba-8737-b03d7ff1800d" />

**5. Инициализируйте проект, выполните код.**

<img width="552" height="52" alt="image" src="https://github.com/user-attachments/assets/bdbbc4b8-9a90-408b-b7a9-d8ce1ac1562b" />

<img width="831" height="318" alt="image" src="https://github.com/user-attachments/assets/d66651d5-0c39-488a-bfbd-218ae94e23cd" />

## Задание 3

**1. Создайте 3 одинаковых виртуальных диска размером 1 Гб с помощью ресурса yandex_compute_disk и мета-аргумента count в файле disk_vm.tf .**

Переменные:

<img width="397" height="307" alt="image" src="https://github.com/user-attachments/assets/5feb5b73-cc7f-4ad6-acb1-b30b2b4a3631" />

Ресурс:

<img width="641" height="231" alt="image" src="https://github.com/user-attachments/assets/345a45a9-23c9-45ca-83e0-2126b4fa1da6" />


**2. Создайте в том же файле одиночную(использовать count или for_each запрещено из-за задания №4) ВМ c именем "storage" . Используйте блок dynamic secondary_disk{..} и мета-аргумент for_each для подключения созданных вами дополнительных дисков.**

Добавляем переменные для новой ВМ:

<img width="377" height="257" alt="image" src="https://github.com/user-attachments/assets/6c59df65-bdcb-4cd2-bc10-ea6d3d1cb361" />


Ресурс:

<img width="655" height="872" alt="image" src="https://github.com/user-attachments/assets/1b7ed256-bd25-47fb-93d1-66ec5819bc17" />





