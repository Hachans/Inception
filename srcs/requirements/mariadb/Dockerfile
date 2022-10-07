FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/init_db.sql/ /var/www/

RUN service mysql start && mysql < /var/www/init_db.sql && rm -f /var/www/init_db.sql;

EXPOSE 3306

CMD ["mysqld"]