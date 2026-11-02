## Домашнее задание к занятию 14 «Средство визуализации Grafana»

### Задание 1

**Решение домашнего задания — скриншот веб-интерфейса grafana со списком подключенных Datasource.**

<img width="1706" height="636" alt="image" src="https://github.com/user-attachments/assets/5c182658-e118-4cdf-b37c-8a2a4b235f82" />

### Задание 2

**Для решения этого задания приведите promql-запросы для выдачи этих метрик, а также скриншот получившейся Dashboard.**

<img width="1902" height="985" alt="image" src="https://github.com/user-attachments/assets/2098395f-896c-41c9-b9f1-a66748a94db2" />

CPU:

`(100 - (avg by (instance) (rate(node_cpu_seconds_total{mode="idle"}[1m])) * 100)) * 100`

CPULA 1/5/15:

`node_load1
node_load5
node_load15`

Available Memory:

`node_memory_MemAvailable_bytes`

Filesystem Available Space:

`node_filesystem_avail_bytes{mountpoint="/mnt/host/c"}`

### Задание 3

**Создайте для каждой Dashboard подходящее правило alert. В качестве решения задания приведите скриншот вашей итоговой Dashboard.**

<img width="1908" height="967" alt="image" src="https://github.com/user-attachments/assets/f3aa8d69-4c72-424d-a544-c6c66636f35b" />

### Задание 4

**Сохраните ваш Dashboard.Для этого перейдите в настройки Dashboard, выберите в боковом меню «JSON MODEL». Далее скопируйте отображаемое json-содержимое в отдельный файл и сохраните его. В качестве решения задания приведите листинг этого файла.**

[Файл дашборда](https://github.com/msiberian42/devops/blob/homework_monitoring_2/my_dashboard.json)
