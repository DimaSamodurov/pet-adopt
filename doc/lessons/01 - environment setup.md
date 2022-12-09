## Конфігурація робочого середовища


### Установка віртуальної машини

Дивись інструкцію тут: https://github.com/DimaSamodurov/chef-dev/blob/master/doc/vm-setup.md


### Важливі моменти

- код проекту і конфігурацію системи тримаємо в системі контролю версій (Git)
- робота починається із стягування останньої версії проекту і встановлення залежностей
 (якщо не було оновлень проекту, або не було оновлень залежностей, просто нічого не відбудеться)

        cd ~/code/pet-adopt
        git pull
        bundle

- Якщо були зміни в конфігурації, треба повторно запустити конфігурування системи

        cd ~/code/chef-dev
        git pull && bundle && librarian-chef install
        rvmsudo chef-solo -c solo.rb

### Можливі проблеми

#### Закриті порти:

    Якщо не получається стягнути бібліотеку чи проект по протоколу ssh чи git,
    можна налаштувати так щоби гіт все тягнув по протоколу https:

        git config url."https://".insteadOf git://

## Setup PG with docker

docker-compose.yml

<pre>
version: "3.6"
services:
  db:
    image: postgres:10
    environment:
      POSTGRES_HOST_AUTH_METHOD: trust
    ports:
      - 5432:5432
    volumes:
      - pgdata10:/var/lib/postgresql/data
      - /var/run/postgresql:/var/run/postgresql
</pre>

- Install docker and docker compose (from official doc)
  https://docs.docker.com/engine/install/ubuntu/
  https://docs.docker.com/engine/install/linux-postinstall/
  
  ``` 
  sudo apt install docker-compose
  sudo groupadd docker
  sudo usermod -aG docker $USER
  ```
  
- Instal postgres client libraries (no need to install database)
  ```
    # dependencies for pg gem
    sudo apt install libpq-dev
    # postgres client tools
    sudo apt install postgresql-client-common
    sudo apt install postgresql-client
  ```
- Run DB server: 
  ```
    docker-compose up db
  ```   
- Add postgres role for the current user with permissions
  ```
    whoami|createuser -U postgres --createdb --superuser
    # Or with psql 
    psql -U postgres
    # then from psql console
    $create user dima with createdb superuser;
  ```
  
  
- Install [NVM](https://github.com/nvm-sh/nvm)

 ```
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
 ```
 
 - Install ruby using rvm on Ubuntu 22.04 and above with openssl 1.1
 https://github.com/rvm/rvm/issues/5209#issuecomment-1114159447

