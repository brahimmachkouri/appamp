#!/bin/sh
# Create the folder
mkdir -p /var/www/html

# Create an empty CodeIgniter project
#/usr/bin/composer create-project codeigniter/framework /var/www/html
echo -e "<?php \nphpinfo();" > /var/www/html/public/index.php

# Since this is a dev tool, I don't care about the permissions
# So the folder html is deletable externally
chmod -R 777 /var/www/html/public
chown -R www-data:www-data /var/www/html/public

# !! This is the last line !!
# If you don't run the process in the foreground, the container will exit with code 0
php-fpm -F
