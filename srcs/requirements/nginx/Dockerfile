FROM alpine:3.15

RUN apk update && apk add --no-cache nginx openssl 

RUN mkdir /etc/nginx/ssl/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=DE/ST=Niedersachsen/L=Wolfsburg/O=42Wolfsburg/CN=ekraujin" \
	-keyout /etc/nginx/ssl/nginx-selfsigned.key \
	-out /etc/nginx/ssl/nginx-selfsigned.crt

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

# RUN mkdir -p /run/nginx

EXPOSE 443
EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]