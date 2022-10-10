FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client


RUN mkdir -p /home/ekraujin
RUN mkdir -p /home/ekraujin/data
RUN mkdir -p /home/ekraujin/data/mariadb
RUN mkdir -p /home/ekraujin/data/wordpress

RUN mkdir -p /var/run/mysqld && mkdir -p /etc/mysql

RUN touch /var/run/mysqld/mysqld.sock && touch /etc/mysql/my.cnf

# RUN chown -R mysql:mysql /var/run/mysqld

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/setup.sh /tmp/setup.sh
COPY ./conf/init.sql /tmp/init.sql

EXPOSE 3306

# RUN chown -R mysql:mysql /var/www/init.sql

# RUN service mysql start && mysql < /var/www/init.sql && rm -f /var/www/init.sql;

ENTRYPOINT ["sh", "/tmp/setup.sh" ]


# FROM alpine:3.15

# RUN	apk update && apk upgrade && apk add --no-cache mariadb mariadb-client

# COPY ./conf/my.cnf /etc/my.cnf.d/my.cnf
# COPY ./conf/setup.sh /usr/bin/setup.sh
# COPY ./conf/init.sql /usr/bin/init.sql

# EXPOSE 3306

# ENTRYPOINT ["sh", "/usr/bin/setup.sh"]