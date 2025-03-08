#!/bin/sh

echo "Current user: $(whoami) (UID: $(id -u))"

echo "Starting mysqld..."
/usr/local/bin/docker-entrypoint.sh mysqld &

echo "Starting fpm8..."
php-fpm8.3 -F &
#php-fpm8.3 -t

sleep 5

echo "Starting nginx..."
nginx -g "daemon off;" 
#nginx -t

#sleep 20

#netstat -tulnp

#php artisan serve --host=0.0.0.0 --port=7860 > /dev/null 2>&1