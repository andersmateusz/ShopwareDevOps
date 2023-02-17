#!/bin/sh
cd /var/www/html && rm composer.json
cp /var/www/html/custom/static-plugins/composer.json /var/www/html/composer.json
cd /var/www/html && composer update