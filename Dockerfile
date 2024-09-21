FROM debian:12.6
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y php apache2 curl
USER root
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
RUN curl -fsSL https://fnm.vercel.app/install -o install.sh
RUN ./install.sh
RUN chmod 777 install
RUN source ~/.bashrc
RUN fnm use --install-if-missing 20
RUN node -v # should print `v20.17.0`
RUN npm -v # should print `10.8.2`