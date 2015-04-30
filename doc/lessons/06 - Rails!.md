# RubyOnRails!

## Теорія

RubyOnRails - це фреймворк для швидкої розробки веб ужитків.

Фреймворк - значить не лише набір бібліотек, але і готове рішення для запуску сервера.

Швидкої розробки - тому що в ідеології фреймворка є спрямованість на дещо стандартні задачі.
Отже максимум речей які попадають під стандарт не потрібно конфігурувати.

А мова Ruby сприяє гнучкості фреймворка.


### Основні частини

- Маршрутизатор запитів ( Router )
- Контроллер  - обробка запитів ( ActionPack: Controller, Rack middleware (Logs, Sessions, Performance, Sessions )
- Модель ( Model )
- Представлення ( View )

Також в коробку фреймворка входить:

- Система генерації скелетів типових рішень
- Система покрокової міграції реляційних баз даних
- Розширення класів мови Рубі і набір міні шаблонів програмування ( ActiveSupport )
- Система створення і розсилки листів ( ActionMail )
- Бібліотека для тестування ( UnitTest )
- Підсистема розробки і керування статичними файлами ( AssetPipeline )


### Допоміжні інструменти 

- RSpec - бібліотека - стандарт де факто для тестування  
- Capybara - стандарт де факто для інтеграційного тестування сторінок
- Devise - аутентіфікація користувачів
- OAuth - аутентифікація третьою стороною
- Mongo - альтернативна база даних
- Solr - повнотекстовий пошук
...

### Недоліки
- Старий підхід до побудови рівня відображення вже не є типовий, більше початковий або академічний.
- Потокова передача даних до сих пір нетривіальна (програвання відео)
- ActiveRecord 
  - складно працювати із декількома базами даних одночасно, 
  - модель наслідування накладає обмеження на те які об'єкти можуть бути моделлю
- Модель масштабування шляхом копіювання процесів в багатьох випадках надто ресурсомістка
- Немає орієнтації на розробку для мобільних пристроїв (очікуємо Rails 5)

## Практика

- Резервування номерів в готелі?
- Публікація оголошень про викрадені велосипеди?

## Завдання
- згенерувати скелет моделі і реалізувати перегляд, редагування даних
- Books: name, author, annotation, genre
Жанр має обиратись з випадаючого списку що зберігається у файлі json.
Для виконання створити відповідний бренч: username_books у проекті pet_adopt.


## Рекомендовані джерела

- [Rails Guides](http://guides.rubyonrails.org/) - офіційні путівники по Рельсах. Дуже змістовні,  - настольна книга в роботі.
- [Rails API searchable documentation](http://api.rubyonrails.org/) - документація по Rails API із зручним пошуком.
- [API doc - Ruby, RSpec, Rails documentation with versions](http://apidock.com/rails) - документація по Rails, Ruby, RSpec для всіх версій бібліотек.
- [Rails Casts](http://railscasts.com/) - дуже ефективні, змістовні ролики що демонструють різні підсистеми RubyOnRails
а також додаткові розширення і технології. Автор - Rian Bates - золото. Ще одна настольна книга, але перед роботою - щоби обрати правильний інструмент для вирішення нової задачки.
- [Go Rails](https://gorails.com/) - відеоуроки і статті по Rails.
- [Rails-API](https://github.com/rails-api/rails-api) - Модифікація Rails для побудови чистого API. Також опис - чому Rails.
- [Tealeaf Academy Blog](http://www.gotealeaf.com/blog/archives) - Непогані статті що вчать RubyOnRails.

### Блоги

- [Elabs blog](http://www.elabs.se/tag/rails) - технічний блог відомої компанії що займається веб розробкою.
- [Thoughtbot blog](https://robots.thoughtbot.com/tags/rails)
- [Engine Yard Ruby](https://blog.engineyard.com/categories/ruby)
- [Engine Yard Rails](https://blog.engineyard.com/categories/rails)

### Приклади великих і успішних проектів з відкритим кодом (на RubyOnRails або Ruby)

- [Open Source Rails](http://www.opensourcerails.com/) - галерея Rails проектів з відкритим кодом
- [GitHub Ruby trending](https://github.com/trending?l=ruby) Рейтинги Ruby проектів на GitHub
- [GitLab.org](https://gitlab.com/groups/gitlab-org) - приклад великого проекту з відкритим кодом.
- [Coderwall](https://coderwall.com/) - соціальна мережа 
- [RubyToolbox](https://www.ruby-toolbox.com/) - каталог і рейтинг бібліотек на мові Рубі. Є розділи пов'язані із Rails.
- [RedMine](https://github.com/redmine/redmine) - система керування проектами
- [Spree](https://github.com/spree/spree) - онлайн магазин
- [Locomotive](https://github.com/locomotivecms/engine) - система керування вмістом
- [Discourse](https://github.com/discourse/discourse) - система коментаріїв
- [Diaspora](https://github.com/diaspora/diaspora) - соціальна мережа
- [Jekyll](https://github.com/jekyll/jekyll) - блоггінг платформа

## Приклади компаній які розробляють сайти на RubyOnRails
- https://netguru.co/portfolio
- http://railsreactor.com/profile.html

## Розсилка новин
[Ruby Weekly](https://cooperpress.com/) - щотижднева підбірка новин по Ruby і RubyOnRails
