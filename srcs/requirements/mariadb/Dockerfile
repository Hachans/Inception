FROM debian:buster

RUN apt-get update && apt-get install -y mariadb-server mariadb-client

RUN mkdir -p /home/ekraujin
RUN mkdir -p /home/ekraujin/data
RUN mkdir -p /home/ekraujin/data/mariadb
RUN mkdir -p /home/ekraujin/data/wordpress

RUN mkdir -p /var/run/mysqld && mkdir -p /etc/mysql

RUN touch /var/run/mysqld/mysqld.sock && touch /etc/mysql/my.cnf

COPY ./conf/my.cnf /etc/mysql/my.cnf
COPY ./conf/setup.sh /tmp/setup.sh
COPY ./conf/init.sql /tmp/init.sql

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/setup.sh" ]