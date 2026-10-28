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

**9. Создайте отдельную ветку feature/add_reply в репозитории. 10. Напишите новый метод для класса Welcomer: метод должен возвращать произвольную реплику, содержащую слово hunter. 11. Дополните тест для нового метода на поиск слова hunter в новой реплике.**

<img width="381" height="200" alt="image" src="https://github.com/user-attachments/assets/c06893b4-8e95-4adf-8b64-33afe00a4a71" />

<img width="737" height="162" alt="image" src="https://github.com/user-attachments/assets/7d2a8f04-7121-472f-bd59-60eaa3ab5f31" />

**12. Сделайте push всех изменений в новую ветку репозитория. 13. Убедитесь, что сборка самостоятельно запустилась, тесты прошли успешно.**

<img width="1397" height="527" alt="image" src="https://github.com/user-attachments/assets/71ea692c-a97a-4210-a931-02207bf4d17c" />

**14. Внесите изменения из произвольной ветки feature/add_reply в master через Merge. 15. Убедитесь, что нет собранного артефакта в сборке по ветке master. 16. Настройте конфигурацию так, чтобы она собирала .jar в артефакты сборки. 17. Проведите повторную сборку мастера, убедитесь, что сбора прошла успешно и артефакты собраны.**

<img width="432" height="196" alt="image" src="https://github.com/user-attachments/assets/564323b0-14e1-4ab9-8440-2b3b5684e054" />

<img width="1377" height="543" alt="image" src="https://github.com/user-attachments/assets/df636f6f-6133-46bf-a5c5-30a5897b7182" />

<img width="423" height="481" alt="image" src="https://github.com/user-attachments/assets/9d6d9ad1-7176-4a51-a21a-f78ff43d9620" />

**18. Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity. 19. В ответе пришлите ссылку на репозиторий.**

[Итоговый репозиторий](https://github.com/msiberian42/example-teamcity)
