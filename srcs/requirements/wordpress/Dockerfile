FROM debian:buster

RUN	apt-get update && apt-get install -y php7.3 php-mysqli php-fpm wget sendmail unzip

RUN mkdir -p /var/www/
RUN chown www-data:www-data /var/www/
WORKDIR /var/www/


RUN wget https://wordpress.org/latest.zip


RUN unzip ./latest.zip && rm ./latest.zip
RUN chown  -R www-data:www-data /var/www/wordpress
RUN mv -n wordpress html

RUN chown -R www-data:www-data /var/www/html

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/start.sh /tmp/start.sh
COPY ./conf/wp-config.php /var/www/html/wp-config.php
RUN rm -rf /var/www/html/wp-config-sample.php

EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/start.sh"]