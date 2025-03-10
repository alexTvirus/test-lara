FROM ubuntu:24.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y  apache2 curl unzip wget xz-utils net-tools procps gnupg

RUN apt-get install -y \
    php8.3 \
    php8.3-fpm \
    php8.3-cli \
    php8.3-common \
    php8.3-mbstring \
    php8.3-xml \
    php8.3-mysql \
    php8.3-pgsql \
    php8.3-sqlite3 \
    php8.3-zip \
    php8.3-curl \
    php8.3-gd \
    php8.3-intl

#-------- php-fpm

ENV php_conf /etc/php/8.3/fpm/php-fpm.conf
ENV fpm_conf /etc/php/8.3/fpm/pool.d/www.conf
ENV php_vars /etc/php/8.3/fpm/conf.d/docker-vars.ini

ADD www.conf ${fpm_conf}

#RUN echo "cgi.fix_pathinfo=0" > ${php_vars} &&\
#    echo "upload_max_filesize = 100M"  >> ${php_vars} &&\
#    echo "post_max_size = 100M"  >> ${php_vars} &&\
#    echo "variables_order = \"EGPCS\""  >> ${php_vars} && \
#    echo "memory_limit = 128M"  >> ${php_vars} && \
#    sed -i \
#        -e "s/;catch_workers_output\s*=\s*yes/catch_workers_output = yes/g" \
#        -e "s/pm.max_children = 5/pm.max_children = 4/g" \
#        -e "s/pm.start_servers = 2/pm.start_servers = 3/g" \
#        -e "s/pm.min_spare_servers = 1/pm.min_spare_servers = 2/g" \
#        -e "s/pm.max_spare_servers = 3/pm.max_spare_servers = 4/g" \
#        -e "s/;pm.max_requests = 500/pm.max_requests = 200/g" \
#        -e "s/user = www-data/user = nginx/g" \
#        -e "s/group = www-data/group = nginx/g" \
#        -e "s/;listen.mode = 0660/listen.mode = 0666/g" \
#        -e "s/;listen.owner = www-data/listen.owner = nginx/g" \
 #       -e "s/;listen.group = www-data/listen.group = nginx/g" \
#        -e "s/listen = 127.0.0.1:9000/listen = \/var\/run\/php-fpm.sock/g" \
#        -e "s/^;clear_env = no$/clear_env = no/" \
#        ${fpm_conf}


# ------------ ngnix
RUN apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/php && \
	mkdir -p /var/www/html && \
	mkdir -p /etc/nginx/sites-available/ && \
    chmod -R 777 /var/www/html && \
    chmod -R 777 /run/php && \
	chown -R ubuntu:ubuntu /run/php && \
	chown -R ubuntu:ubuntu /var/www/html 


RUN	chmod -R 777 /var/lib



ENV nginx_vhost /etc/nginx/sites-available/default
ENV php_conf /etc/php/8.3/fpm/php.ini
ENV nginx_conf /etc/nginx/nginx.conf



# ----------------------


# Enable php-fpm on nginx virtualhost configuration
ADD default ${nginx_vhost}
#RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' ${php_conf} && \
#    echo "\ndaemon off;" >> ${nginx_conf}

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


#---------------------

ENV GOSU_VERSION 1.17
RUN set -eux; \
	savedAptMark="$(apt-mark showmanual)"; \
	apt-get update; \
	apt-get install -y --no-install-recommends  ca-certificates wget; \
	rm -rf /var/lib/apt/lists/*; \
	dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; \
	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; \
	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; \
	export GNUPGHOME="$(mktemp -d)"; \
	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; \
	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; \
	gpgconf --kill all; \
	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; \
	apt-mark auto '.*' > /dev/null; \
	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; \
	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	chmod +x /usr/local/bin/gosu; \
	gosu --version; \
	gosu nobody true

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
		bzip2 \
		openssl \
# FATAL ERROR: please install the following Perl modules before executing /usr/local/mysql/scripts/mysql_install_db:
# File::Basename
# File::Copy
# Sys::Hostname
# Data::Dumper
		perl \
		xz-utils \
		zstd \
	; \
	rm -rf /var/lib/apt/lists/*

RUN set -eux; \
# pub   rsa4096 2023-10-23 [SC] [expires: 2025-10-22]
#       BCA4 3417 C3B4 85DD 128E  C6D4 B7B3 B788 A8D3 785C
# uid           [ unknown] MySQL Release Engineering <mysql-build@oss.oracle.com>
# sub   rsa4096 2023-10-23 [E] [expires: 2025-10-22]
	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; \
	export GNUPGHOME="$(mktemp -d)"; \
	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; \
	mkdir -p /etc/apt/keyrings; \
	gpg --batch --export "$key" > /etc/apt/keyrings/mysql.gpg; \
	gpgconf --kill all; \
	rm -rf "$GNUPGHOME"

# Cập nhật và cài đặt MySQL
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
    
RUN rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld \
            && chmod 1777 /var/run/mysqld /var/lib/mysql
            
VOLUME /var/lib/mysql

# Sao chép file cấu hình MySQL
COPY mysql.cnf /etc/mysql/my.cnf

# Đặt mật khẩu root MySQL thông qua debconf

ENV MYSQL_ROOT_PASSWORD sa
ENV MYSQL_DATABASE=firecomic_db

RUN echo "mysql-server mysql-server/root_password password sa" | debconf-set-selections && \
    echo "mysql-server mysql-server/root_password_again password sa" | debconf-set-selections
	
#---------------------
	
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr
ENV APP_KEY base64:qKieeboLsDmpW8qISpXunQoiPW2iyBr5/whnGIstu1A=	

RUN	mkdir -p /var/firecomic 

USER ubuntu
COPY . /var/firecomic/

USER root
RUN chmod -R 777 /var/firecomic && \
	chown -R ubuntu:ubuntu /var/firecomic

#RUN composer create-project laravel/laravel example-app
#RUN cd example-app
#WORKDIR /example-app
#RUN ls -la
#RUN chmod 706 -R /example-app/bootstrap/cache
#RUN chmod 760 -R /example-app/storage
#RUN chmod 706 /example-app/database/database.sqlite
#RUN chown -R ubuntu:ubuntu /example-app
#RUN apt-get install -y  mariadb-server sudo
#RUN usermod -aG sudo ubuntu
#USER root:root
#RUN sudo service mariadb start; service --status-all

ADD start.sh /start.sh

RUN mkdir /docker-entrypoint-initdb.d

ADD docker-entrypoint.sh /docker-entrypoint.sh

ADD firecomic_db.sql /docker-entrypoint-initdb.d/

ADD docker-entrypoint.sh /usr/local/bin/

USER root
#RUN chown ubuntu:ubuntu /run/php/php8.3-fpm.sock 
#RUN	chmod -R 777 /run/php/php8.3-fpm.sock

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /start.sh
RUN chmod -R 777 /var/www
RUN chmod -R 777 /var/run
RUN chmod -R 777 /run/mysqld
RUN chmod -R 777 /run/php
RUN chmod -R 777 /var/lib/mysql
RUN	chmod -R 777 /var/log

EXPOSE 7860


CMD ["/start.sh"]