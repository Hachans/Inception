FROM alpine:3.15

RUN apk update && apk add --no-cache php php-common php-fpm php-json php-session php-mysqli

RUN mkdir -p /var/www/

ADD http://wordpress.org/latest.tar.gz /var/www/

RUN tar -xzf /var/www/latest.tar.gz -C /var/www/ && rm -rf /var/www/latest.tar.gz

RUN adduser -S nginx && addgroup -S nginx && adduser nginx nginx

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./conf/start.sh /var/www/start.sh
COPY ./conf/wp-config.php /var/www/html/wp-config.php

EXPOSE 9000

ENTRYPOINT ["sh", "/var/www/start.sh"]