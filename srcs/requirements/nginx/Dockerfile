FROM debian:buster

RUN apt-get update && apt-get -y install nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/CN=ekraujin" \
	-keyout /etc/ssl/nginx-selfsigned.key \
	-out /etc/ssl/nginx-selfsigned.crt

COPY ./conf/default.conf /etc/nginx/sites-available/default

EXPOSE 443
EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]