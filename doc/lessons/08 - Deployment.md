## Установка на Heroku

## Установка на власний/віртуальний сервер

- [Конфігурація сервера](https://gorails.com/deploy/ubuntu/14.04)
- [Установка за допомогою mina](https://www.digitalocean.com/community/tutorials/how-to-use-mina-to-deploy-a-ruby-on-rails-application)

TODO: Передача секретних змінних середовища
### Захист сервера

- Create a user 
- Grant user sudo permission
- Add a login key to .ssh/authorised_keys
- Try to login with the key!
- Disable root login and login with password updating values in `/etc/ssh/sshd_config`:
```
PermitRootLogin no
PermitEmptyPasswords no
PasswordAuthentication no
```
Reload ssh
```    
  sudo service ssh reload
```

Конфігурація
- Ruby
- MonboDB
- Nginx + Passenger 
- Передача секретних змінних середовища

## Автоматична конфігурація за допомогою Chef + Capistrano

## Установка за допомогою Docker

## Scaling

- https://tsh.io/blog/how-to-scale-websocket/
