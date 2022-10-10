FROM debian:buster

RUN	apt-get update && apt-get install -y php7.3 php-mysqli php-fpm wget sendmail unzip

RUN mkdir -p /var/www/ && mkdir -p /run/php && mkdir -p /usr/local/bin/wp
RUN chown www-data:www-data /var/www/
WORKDIR /var/www/


# RUN sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf"

# RUN chown -R www-data:www-data /var/www/*;
# RUN chown -R 755 /var/www/*;
# RUN touch /run/php/php7.3-fpm.pid

# RUN cd /var/www/html;
# RUN wp core download --allow-root;
# RUN mv /var/www/wp-config.php /var/www/html/

RUN wget https://wordpress.org/latest.zip


RUN unzip ./latest.zip && rm ./latest.zip
RUN chown  -R www-data:www-data /var/www/wordpress
RUN mv -n wordpress html

RUN chown -R www-data:www-data /var/www/html

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./conf/start.sh /tmp/start.sh
COPY ./conf/wp-config.php /var/www/html/wp-config.php
RUN rm -rf /var/www/html/wp-config-sample.php

# RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod a+x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

EXPOSE 9000

ENTRYPOINT ["sh", "/tmp/start.sh"]