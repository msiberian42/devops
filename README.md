# Домашнее задание к занятию 6. «Оркестрация кластером Docker контейнеров на примере Docker Swarm»

## Задача 1

**Создайте ваш первый Docker Swarm-кластер в Яндекс Облаке. Проверьте список нод командой:**

<img width="900" height="107" alt="image" src="https://github.com/user-attachments/assets/8df861bc-a883-4fe4-a299-961d70780a1f" />

## Задача 2

**Задеплойте ваш python-fork из предыдущего ДЗ(05-virt-04-docker-in-practice) в получившийся кластер.:**

Для запуска на кластере пришлось отредактировать файлы [swarm.yaml](https://github.com/msiberian42/shvirtd-example-python/blob/main/Swarm/swarm.yaml), [haproxy.cfg](https://github.com/msiberian42/shvirtd-example-python/blob/main/Swarm/haproxy.cfg), [default.conf](https://github.com/msiberian42/shvirtd-example-python/blob/main/Swarm/default.conf), [nginx.conf](https://github.com/msiberian42/shvirtd-example-python/blob/main/Swarm/nginx.conf). Работающий проект на кластере:

<img width="1867" height="282" alt="image" src="https://github.com/user-attachments/assets/28b31d68-0705-480a-aa7d-93c6b1ba4b8e" />



