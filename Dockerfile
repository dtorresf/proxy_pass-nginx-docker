FROM nginx

RUN apt-get update && \
    apt-get install -y vim

COPY conf/nginx.conf /etc/nginx/nginx.conf
ADD sites-enabled/ /etc/nginx/sites-enabled/

COPY docker-entrypoint.sh /entrypoint.sh

#Startup
CMD ["/entrypoint.sh"]