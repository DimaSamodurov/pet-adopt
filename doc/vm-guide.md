## Запуск середовища розробки за допомогою підготовленої віртуальної машини.

- Установіть VirtualBox
- Скачайте образ віртуальної машини:

        - Ubuntu-dev(64 Bit) рекомендована версія:
        - Ubuntu-dev(32 Bit): https://drive.google.com/open?id=0B4Xw73hG_zb7UWlzdGNmcDRCMG8&authuser=0

        Примітка: Якщо ваш процесор не підтримує апаратну віртуалізацію, то використовуйте 32-ну версію.
        VirtualBox не підтримує 64 бітні системи без апаратної віртуалізації.

- Пароль для входу в систему:

        User: dev
        Password: dev123


## При першому запуску середовища необхідно:

- Згенерувати пару ключів:

        ssh-keygen -t rsa -C "name of the key"

- Додати публічний ключ до вашого облікового запису Gighub.

  Інструкція тут: https://help.github.com/articles/generating-ssh-keys/


- Сконфігурувати git:

        git config --global user.name "Your Name"
        git config --global user.email "youremail@domain.com"


