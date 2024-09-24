FROM debian:12.6
RUN apt update -y
RUN apt upgrade -y
RUN apt install -y php apache2 curl unzip 
RUN apt install -y wget
RUN apt install -y xz-utils 
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
RUN ls
RUN wget https://nodejs.org/dist/v20.17.0/node-v20.17.0-linux-x64.tar.xz
RUN ls -la
RUN chmod 777 /node-v20.17.0-linux-x64.tar.xz
RUN which tar
RUN pwd
RUN tar -xf '/node-v20.17.0-linux-x64.tar.xz'
RUN cp -r /node-v20.17.0-linux-x64/{bin,include,lib,share} /usr/
RUN ls /node-v20.17.0-linux-x64
CMD [ "bash","-c" , "ls -la /node-v20.17.0-linux-x64/bin ;bash /node-v20.17.0-linux-x64/bin/node; node --version; tail -F error.log"]