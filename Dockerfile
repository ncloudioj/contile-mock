FROM openresty/openresty:buster-fat

RUN groupadd --gid 10001 app \
    && useradd -m -g app --uid 10001 -s /usr/sbin/nologin app \
    && chown -R app:app /usr/local/openresty/nginx \
    && chown -R app:app /var/run/openresty

USER app

WORKDIR /app

COPY src/ /usr/local/openresty/nginx

COPY conf/nginx-docker.conf /etc/nginx/conf.d/contile-mock.conf

EXPOSE 8080
