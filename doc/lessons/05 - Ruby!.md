# Мова Ruby!

## Теорія

Довший час я задавався питаннями: 
- для чого вигадали так багато мов і чому вигадують далі? 
- навіщо Python, якщо є Delphi, Java, C# - 
 об'єктно орієнтовані мови із автоматичним збиранням сміття?
- навіщо Ruby, якщо є Perl, PHP і Python?
- чому примітивний JavaScript - це, не так вже примітивно, 
 а, можливо, більше ніж все вище назване.

Спробую на це відповісти.

Метою заняття є висвітлення ідеології мови Ruby, 
базових концептів мови і основних відмінностей від відомих мов.
Попри багато схожих і відомих елементів мови, існують нюанси, 
що в поєднанні роблять мову гармонійною.

Також важливо зрозуміти позиціонування мови на ринку. 
Не всі задачі ефективно розробляти на Ruby.


### Основні елементи мови

- Замикання (Closure, Lambda, Proc)
- Блоки (Blocks)
- Клас - це об'єкт (instance variables, methods, class methods)
- Self - поточний отримувач виклику методу
- Відкритість класу (Open class, self всередині класу)
- Модулі, різні види використання модулів (неймспейс, міксин)
- Наслідування і підмішування (Single parent Inheritance & Mixins)
- Синглетний клас або метаклас ( Singleton class, Eigen class, Meta class), розширення поведінки будь-якого об'єкта.
- Method_missing
- Резолюція методів ( Class.ancestors, method resolution )

- Перелічимий тип ( Enumerable, Enumerator )

# Недоліки
- швидкодія
- відсутність розвинутих примітивів конкурентого виконання


## Практика

... вправа по кожному пункту

## Рекомендована література

- [Сайт мови Ruby](https://www.ruby-lang.org/en/) - містить посилання на документацію, уроки, новини.
- [Ruby - Стисло](http://zenspider.com/Languages/Ruby/QuickRef.html) - 
 не допоможе зрозуміти мову, але допоможе побачити що іще ви не знаєте :)
- [Awesome Ruby](http://awesome-ruby.com/) - опис бібліотек що найчастіше використовуються.
- [Ruby Bookmarks](https://github.com/dreikanter/ruby-bookmarks) - іще один каталог найцікавіших рубі ресурсів.
- [Another Ruby Bookmarks](https://github.com/Sdogruyol/awesome-ruby) - і іще один каталог ресурсів.
- [Документація](http://rubyinstaller.org/downloads/) - 
 документація у форматі .chm - зручна для офлайн перегляду і пошуку.
- [Metaprogramming in Ruby: It’s All About the Self](http://yehudakatz.com/2009/11/15/metaprogramming-in-ruby-its-all-about-the-self/)
 концепції рубі від відомого інженера Єхуди Кац.
- [Онлай середовище для навчання Ruby](http://www.codecademy.com/en/tracks/ruby) - сайт містить цілий набір вірт. середовищ для навчання різних мов програмування і рубі в тому числі. Плюс там є середовища проектування і розробки "Make a Rails Application I" і "Make a Rails Application II", що дозволяють зрозуміти принципи розробки проектів на Rails-ах. І все безкоштовно)
- [RubyMonk](https://rubymonk.com/) - Free, interactive tutorials to help you discover Ruby idioms, in your browser!



