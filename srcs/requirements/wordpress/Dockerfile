FROM debian:buster
EXPOSE 9000
RUN apt-get update 
RUN apt-get install -y vim php-mysqli php-fpm wget php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/
RUN chmod 777 /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir /run/php
COPY ./tools/wp_php.sh /var/www/
RUN chmod 777 /var/www/wp_php.sh
ENTRYPOINT ["bash", "/var/www/wp_php.sh"]
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
