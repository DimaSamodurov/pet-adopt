# language: uk
Функціонал: Домашня сторінка
  Для того щоби мати можливість знайти необхідну інформацію на сайті
  Як людина що шукає тварину для прилаштування
  Я хочу бачити навігаційне меню на головній сторінці

  Передумова:
    Припустимо, що в каталозі існує декілька котів
    А також декілька псів
    А також декілька новин

  Сценарій: Навігаційне меню
    Коли ми відкрили початкову сторінку
    Тоді в навігаційному меню я хочу бачити посилання на розділи:
      |Розділ  |
      |Пси     |
      |Коти    |
      |Новини  |
    А також ми маємо бачити кількість елементів у відповідному розділі