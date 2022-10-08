#/bin/sh

mariadb-install-db --user=mysql --ldata=/var/lib/mysql

chown -R mysql:root /var/lib/mysqld

exec mysqld --user=mysql --init-file=/usr/bin/init.sql