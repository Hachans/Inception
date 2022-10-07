FROM debian:buster

RUN apt-get update && apt-get install -y php7.4 php-mysqli

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d
COPY ./conf/wp-config.php /var/www/



CMD ['']