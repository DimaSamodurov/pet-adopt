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

- Стягнути зміни з віддаленого репо (початок [GithubFlow](https://guides.github.com/introduction/flow/))

        git pull

- Переключитись на іншу гілку "develop" 

        git checkout develop
        
- Підтягнути останні зміни гілки "develop" з репозиторія "origin" (ми часто опускаємо це ім'я і воно використовується по замовчуванню)

       git pull origin develop
        
- Створити нову гілку "update_application_logo"

        git checkout -b update_application_logo
        
- Додати змінені файли у локальний репо

        git add .

- Зафіксувати зміни

        git commit -m 'Shortly describe changes here'

- Віддати зміни у віддалений репо (кінець GitFlow)

        git push

- Приховати зміни

        # Лише змінені файли
        git stash
        # Додані і змінені файли
        git stash -u

- Повернути попередньо приховані зміни

        git stash pop
        
 # Завдання
        
- Люди А, Б, С відредагувати файл README.md, по різному змінівши першу стрічку.
- Необхідно всім закомітіти зміни і віддати у репо.


## Часто використовані команди

Видалити всі локальні гілки окрім мастера

        git branch | grep -v "master" | xargs git branch -D 

## Рекомендовані джерела

Git documentation: [http://git-scm.com/docs/](http://git-scm.com/docs/)

