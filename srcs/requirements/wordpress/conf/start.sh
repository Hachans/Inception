mv /var/www/wordpress/* /var/www/html/

chown -R nginx:nginx /var/www/html

# mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

exec /usr/sbin/php-fpm7 -F