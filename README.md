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

<img width="606" height="270" alt="image" src="https://github.com/user-attachments/assets/5d081513-6516-4f3e-8892-0cea13f77ba5" />

## Задание 4

**1. В файле ansible.tf создайте inventory-файл для ansible. Используйте функцию tepmplatefile и файл-шаблон для создания ansible inventory-файла из лекции. Готовый код возьмите из демонстрации к лекции demonstration2. Передайте в него в качестве переменных группы виртуальных машин из задания 2.1, 2.2 и 3.2, т. е. 5 ВМ.**

Создаем inventory.tftpl:

<img width="605" height="407" alt="image" src="https://github.com/user-attachments/assets/a4bd5ad6-eb1f-4727-8ad2-34c597f32c4a" />

Создаем ansible.tf:

<img width="877" height="908" alt="image" src="https://github.com/user-attachments/assets/6ca24651-5bf9-4194-831c-1f40ab435a15" />

**3. Добавьте в инвентарь переменную fqdn.**

<img width="842" height="666" alt="image" src="https://github.com/user-attachments/assets/eda62a6e-b88c-4bed-9e37-96f70e505a85" />

<img width="832" height="407" alt="image" src="https://github.com/user-attachments/assets/ac8cf3f9-24f9-48f6-a046-5654ada37d76" />

**4. Выполните код. Приложите скриншот получившегося файла.**

Без переменной hostname:

<img width="832" height="365" alt="image" src="https://github.com/user-attachments/assets/2a91121c-b686-4c89-a589-5855cbe2da7a" />

Прописывем переменную hostname в ресурсах ВМ:

<img width="476" height="107" alt="image" src="https://github.com/user-attachments/assets/d908f196-bbf7-4402-b7eb-09516ae766e3" />

<img width="745" height="347" alt="image" src="https://github.com/user-attachments/assets/db162c97-6c76-4427-b257-fa4c9602612c" />


Итоговый код проекта [тут](https://github.com/msiberian42/devops/commit/6205351695c60e90ea1af56c520bdb9cbd00a11c#diff-31a7ea70f00bd94f65a728f6a0476c89cea219ad6808709356218cee378428e0)

## Задание 5

outpuf.tf:

<img width="547" height="600" alt="image" src="https://github.com/user-attachments/assets/5aaafebb-59dc-4091-b0b8-662f03ecb6d8" />

Вывод:

<img width="482" height="603" alt="image" src="https://github.com/user-attachments/assets/3f6c7eb0-79ec-44ab-9a40-80fa72d27010" />

## Задание 6

**Используя null_resource и local-exec, примените ansible-playbook к ВМ из ansible inventory-файла.**

Ресурс:

<img width="922" height="336" alt="image" src="https://github.com/user-attachments/assets/95ef4cf7-1230-4d48-a9eb-e0d64950e008" />

**Модифицируйте файл-шаблон hosts.tftpl. Необходимо отредактировать переменную ansible_host="<внешний IP-address или внутренний IP-address если у ВМ отсутвует внешний адрес>. Для проверки работы уберите у ВМ внешние адреса(nat=false). Этот вариант используется при работе через bastion-сервер. Для зачёта предоставьте код вместе с основной частью задания.**

Итоговый коммит [тут](https://github.com/msiberian42/devops/commit/a147a4793e5201ef2dea42e10932c9c4214aa726)

## Задание 7

