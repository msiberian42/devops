## Домашнее задание к занятию 11 «Teamcity»

**1. Создайте новый проект в teamcity на основе fork.**

<img width="1371" height="567" alt="image" src="https://github.com/user-attachments/assets/488a96ac-179c-4d49-97f4-10e7e2f1a3f6" />

**2. Сделайте autodetect конфигурации.**

<img width="1380" height="427" alt="image" src="https://github.com/user-attachments/assets/3940391f-3e18-479d-8bb6-27cfcbf5a8c1" />

**3. Сохраните необходимые шаги, запустите первую сборку master.**

<img width="1382" height="517" alt="image" src="https://github.com/user-attachments/assets/e22f7808-fe1d-4d62-b21c-3fc05d1343e0" />

**4. Поменяйте условия сборки: если сборка по ветке master, то должен происходит mvn clean deploy, иначе mvn clean test.**

<img width="1388" height="553" alt="image" src="https://github.com/user-attachments/assets/26574ec3-1711-40d2-b895-73d9a2525017" />

**5. Для deploy будет необходимо загрузить settings.xml в набор конфигураций maven у teamcity, предварительно записав туда креды для подключения к nexus. 6. В pom.xml необходимо поменять ссылки на репозиторий и nexus. 7. Запустите сборку по master, убедитесь, что всё прошло успешно и артефакт появился в nexus.**

<img width="1398" height="767" alt="image" src="https://github.com/user-attachments/assets/92917f40-2014-434f-a3e0-17fbca7cfeac" />

<img width="656" height="535" alt="image" src="https://github.com/user-attachments/assets/addbfa65-2b64-45ec-a92e-bccb72e04d62" />

**8. Мигрируйте build configuration в репозиторий.**

[Конфигурация](https://github.com/msiberian42/example-teamcity/tree/master/.teamcity)

**9. Создайте отдельную ветку feature/add_reply в репозитории. 


