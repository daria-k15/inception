FROM debian:buster
EXPOSE 3306
RUN apt-get update 
RUN apt-get install -y mariadb-server vim
COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod 444 /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/initdb.sh      /var/www/
ENTRYPOINT ["bash", "/var/www/initdb.sh"]
