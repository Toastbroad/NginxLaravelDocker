#!/bin/bash
cd /var/www/html
laravel new blog
cd blog
composer install
chmod -R 777 /var/www/html 
/etc/init.d/nginx start
service php7.0-fpm restart
/bin/bash
