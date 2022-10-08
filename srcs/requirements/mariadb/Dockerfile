FROM alpine:3.15

RUN apk update && apk add --no-cache mariadb mariadb-client mysql mysql-client

COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY ./conf/setup.sh /usr/bin/setup.sh
COPY ./conf/init.sql /usr/bin/init.sql

EXPOSE 3306

ENTRYPOINT ["sh", "/usr/bin/setup.sh"]