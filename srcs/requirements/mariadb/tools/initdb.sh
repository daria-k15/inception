#!bin/env bash
chown -R mysql:mysql /var/lib/mysql
if ! [ -d "/var/lib/mysql/wordpress" ]; then
mkdir -p /var/lib/mysql/wordpress
service mysql start & sleep 10
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_WP_NAME DEFAULT CHARACTER SET utf8;"
mysql -u root -e "CREATE USER '$MYSQL_USER_NAME'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_WP_NAME.* TO $MYSQL_USER_NAME@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysqladmin  password $MYSQL_ROOT_PASSWORD
service mysql stop
fi

/usr/bin/mysqld_safe
cat /var/log/mysql/error.log
