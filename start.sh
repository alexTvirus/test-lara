#!/bin/sh

echo "Current user: $(whoami) (UID: $(id -u))"

#cp -r /home/. /var/www/html/

cd /var/firecomic

echo "Running composer"
composer install --no-dev --working-dir=/var/firecomic

echo "Caching config..."
cd /var/firecomic && php /var/firecomic/artisan config:cache

echo "Caching routes..."
cd /var/firecomic && php /var/firecomic/artisan route:cache

cd /var/firecomic && php /var/firecomic/artisan key:generate

echo "Starting mysqld..."
/usr/local/bin/docker-entrypoint.sh mysqld &


until mysqladmin ping -h"localhost" -uroot -psa --silent; do
    echo "connect..."
    sleep 2
done

mysql -uroot -psa firecomic_db < /docker-entrypoint-initdb.d/firecomic_db.sql


echo "Starting fpm8..."
php-fpm8.3 -F &
#php-fpm8.3 -t

echo "Đang chờ PHP-FPM mở cổng 9000..."
#while ! netstat -tuln | grep ":9000 "; do
#  sleep 1
#done

echo "PHP-FPM đã mở cổng 9000."

echo "Starting nginx..."
nginx -g "daemon off;" 
#nginx -t

#sleep 20

#netstat -tulnp

#php artisan serve --host=0.0.0.0 --port=7860 > /dev/null 2>&1