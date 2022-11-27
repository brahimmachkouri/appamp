A docker-compose to build an Apache / PHP / PhpMyAdmin / Mariadb stack

### How to build & run it

To build the services :
```
docker-compose build
```

To create and start the containers :
```
docker-compose up
```

### Some commands

To start the services afterwards :
```
docker-compose start
```

To restart them :
```
docker-compose restart
```

To stop them :
```
docker-compose stop
```

To Stop and remove containers, networks :
```
docker-compose down
```

### Welcome Page

Connect to http://localhost to see a CodeIgniter 4 welcome page.

### PhpMyAdmin

Connect to http://localhost:8080

login : root  
password : superpass

An html folder is created, and all the app files are in this folder.
