FROM ubuntu:24.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y php apache2 curl unzip wget xz-utils php-xml php-sqlite3
# php-xml php-dom php-pdo php-mysql
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

#RUN wget https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz
#RUN chmod 777 /node-v20.17.0-linux-x64.tar.xz
#RUN tar -xf '/node-v20.17.0-linux-x64.tar.xz'
#RUN cp -r /node-v20.17.0-linux-x64/bin /node-v20.17.0-linux-x64/include /node-v20.17.0-linux-x64/lib /node-v20.17.0-linux-x64/share /usr/


# Cập nhật và cài đặt MySQL
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

# Sao chép file cấu hình MySQL
COPY mysql.cnf /etc/mysql/my.cnf

# Đặt mật khẩu root MySQL thông qua debconf

ENV MYSQL_ROOT_PASSWORD sa
ENV MYSQL_DATABASE=firecomic_db

RUN echo "mysql-server mysql-server/root_password password sa" | debconf-set-selections && \
    echo "mysql-server mysql-server/root_password_again password sa" | debconf-set-selections
	

RUN composer create-project laravel/laravel example-app
RUN cd example-app
WORKDIR /example-app
# Verificar que archivos necesitan acceso de escritura o carpetas
RUN ls -la
RUN chmod 706 -R /example-app/bootstrap/cache
RUN chmod 760 -R /example-app/storage
RUN chmod 706 /example-app/database/database.sqlite
RUN chown -R ubuntu:ubuntu /example-app
#RUN apt-get install -y  mariadb-server sudo
RUN usermod -aG sudo ubuntu
USER root:root
#RUN sudo service mariadb start; service --status-all

RUN mkdir /docker-entrypoint-initdb.d

ADD docker-entrypoint.sh /docker-entrypoint.sh

ADD docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN chmod -R 777 /var/run
RUN chmod -R 777 /run/mysqld
RUN chmod -R 777 /var/lib/mysql

EXPOSE 7860

CMD [ "bash","-c" , "sudo su; id; whoami; ls -la database; /usr/local/bin/docker-entrypoint.sh mysqld ; php artisan serve --host=0.0.0.0 --port=7860 > /dev/null 2>&1"]