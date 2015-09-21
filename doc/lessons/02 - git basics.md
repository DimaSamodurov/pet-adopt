## Теорія

[Git](http://uk.wikipedia.org/wiki/Git) - інструмент керування версіями.


[Github](http://github.com)- сервіс на базі Git http://github.com.


## Практика

- Створити обліковий запис Github
- Додати публічний ключ до вашого облікового запису Github згідно [інструкції](https://help.github.com/articles/generating-ssh-keys/).
- Сконфігурувати git:

        git config --global user.name "Your Name"
        git config --global user.email "youremail@domain.com"

- Склонувати репозиторій

        git clone

- Стягнути зміни з віддаленого репо

        git pull
        git pull --rebase

- Додати змінені файли у локальний репо

        git add .

- Зафіксувати зміни

        git commit -m 'Shortly describe changes here'

- Віддати зміни у віддалений репо

        git push
        
- Приховати зміни

        # Лише змінені файли
        git stash
        # Додані і змінені файли
        git stash -u

- Повернути попередньо приховані зміни

        git stash pop
        
### Завдання
        
- Люди А, Б, С відредагувати файл README.md, по різному змінівши першу стрічку.
- Необхідно всім закомітіти зміни і віддати у репо.


## Рекомендовані джерела

Git documentation: [http://git-scm.com/docs/](http://git-scm.com/docs/)
Покрокове пояснення (із російським перекладом): [http://githowto.com/aliases](http://githowto.com/aliases)
