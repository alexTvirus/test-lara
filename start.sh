#!/bin/sh

echo "Starting MySQL..."
/usr/local/bin/docker-entrypoint.sh mysqld &

php artisan serve --host=0.0.0.0 --port=7860 > /dev/null 2>&1