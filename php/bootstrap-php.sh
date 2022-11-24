#!/bin/sh
mkdir -p /var/www/html
/usr/bin/composer create-project CodeIgniter/framework /var/www/html
chmod -R 777 /var/www/html
chown -R www-data:www-data /var/www/html

# This is the last line
# If you don't run the process in the foreground, the container will exit with code 0
php-fpm -F