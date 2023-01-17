A Docker LAMP (Apache / PHP / PhpMyAdmin / Mariadb)

Tested in Windows, macOS, linux Ubuntu.

### How to build & run it

```
git clone https://github.com/brahimmachkouri/appmapp.git mydev
cd mydev
```

To build the services (the first time only) :
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

Connect to http://localhost to see a php infos page.

### PhpMyAdmin

Connect to http://localhost:8080

login : root  
password : superpass

An html folder is created, and all the app files must be in this folder.
