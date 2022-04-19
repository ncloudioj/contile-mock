FROM openresty/openresty:buster-fat

WORKDIR /app

COPY src/ /usr/local/openresty/nginx

COPY conf/nginx-docker.conf /etc/nginx/conf.d/contile-mock.conf

EXPOSE 8080
