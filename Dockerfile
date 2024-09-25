FROM ubuntu:latest

RUN apt update -y
RUN apt upgrade -y
RUN apt install -y php apache2 curl unzip wget xz-utils php-xml php-sqlite3
# php-xml php-dom php-pdo php-mysql
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

RUN wget https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz
RUN chmod 777 /node-v20.17.0-linux-x64.tar.xz
RUN tar -xf '/node-v20.17.0-linux-x64.tar.xz'
RUN cp -r /node-v20.17.0-linux-x64/bin /node-v20.17.0-linux-x64/include /node-v20.17.0-linux-x64/lib /node-v20.17.0-linux-x64/share /usr/

RUN composer create-project laravel/laravel example-app
RUN cd example-app
WORKDIR /example-app
# Verificar que archivos necesitan acceso de escritura o carpetas
RUN ls -la
# RUN chmod 706 -R /example-app/bootstrap/cache
# RUN chmod 760 -R /example-app/storage
# RUN chmod 706 /example-app/database/database.sqlite
RUN chown -R ubuntu:ubuntu /example-app
RUN apt install -y  mariadb-server sudo

CMD [ "bash","-c" , "id; whoami; ls -la database; service mariadb start; php artisan serve --host=0.0.0.0 --port=7860"]