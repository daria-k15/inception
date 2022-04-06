FROM debian:buster
EXPOSE 7171
RUN apt-get update
RUN apt-get install -y vim php-mysqli php-fpm wget php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
RUN wget "http://www.adminer.org/latest.php"
RUN mv latest.php index.php
CMD php -S 0.0.0.0:7171 
