# Проект “Прилаштування тварин”  (Pet adoption)

## Мета проекту

Переробити сайт “zoo.ratusha.lviv.ua” з метою розширення його функціональності.

## Додаткові функціональні вимоги

- Публікація оголошень різними люльми.
- Наявність коментарів до оголошень.
- Інтеграція з соціальними мережами:
- Наявність кнопок “Подобається”, та “Поширити” для кожного оголошення, а також для сайту в цілому.
- Спрощення переносу оголошень з різних груп Фейсбуку та ВК (доцільність досліджується)
- Зручний вигляд і навігація на мобільних пристроях: телефонах і планшетах.
- Гугл аналітика.
- Можливість просування в пошукових системах.

## Вимоги безпеки

- проект має повністтю відкритий код.
- декілька розробників можуть підтримувати проект: відновити у разі збою, виправити помилку, виконати невеликі зміни в дизайні або логіці роботи програми.
- проект можна розгорнути на будь-якому віртуальному хостингу (VPS) із збереженням даних.
- забезпечується щоденне резервне копіювання даних
  забезпечується

## Репозиторії проекту

- код проекту: https://github.com/DimaSamodurov/pet-adopt
- конфігурація середовища розробки: https://github.com/DimaSamodurov/chef-dev/

## Розробка

### Середовище розробника

Розробка ведеться на мові Ruby. База даних MongoDB, конфігурація системи здійснюється за допомогою Chef.

Інструкція по настройці середовища на віртуальній машині Ubuntu:
https://github.com/DimaSamodurov/pet-adopt/doc/lessons/01+-+environment+setup.md


Для старту проекту локально виконайте:

        # створюємо каталог для проектів (одноразово)
        mkdir ~/code
        cd ~/code

        # клонуємо репозиторій (одноразово)
        git clone git@github.com:DimaSamodurov/pet-adopt.git

        # встановлюємо бібліотеки проекту (щоразу як бібліотеки змінились)
        cd pet-adopt
        bundle install

        # Заповнюємо базу тестовими даними
        rake db:seed

        # Стартуємо локальний сервер
        rails s

Відкрийте в браузері посилання http://localhost:3000 - ви маєте побачити працюючий проект.

### Тестування

Передбачається, що вся функціональність буде перевірятись автоматичними тестами.
Для запуску всіх тестів виконайте:

        rake

## Установка на сервер

    # Install heroku tool following instructions below:
    # https://devcenter.heroku.com/articles/getting-started-with-ruby#set-up
    
    # then 
    
    heroku login
    heroku create # once
    
    # Add mongolabs plugin
    # Add mongodb user and password
    # Configure MongoDB uri
    
    heroku config:set MONGOHQ_URL=mongodb://<dbuser>:<dbpassword>@ds031852.mongolab.com:31852/heroku_app36906824
    
    heroku config:set FACEBOOK_APP_ID=
    heroku config:set FACEBOOK_SECRET=

    # Deploy

    git push heroku master

## Резервне копіювання даних

- атоматичне створення резервної копії бази даних і завантажених матеріалів (зображень, відео)

        ...

- процедура відновлення даних

        ...

## Моніторинг і нотифікація у випадку збоїв

        ...

## Аналітика відвідування

        ...

