#!/bin/bash
if [[ $APP_CONTAINER && $APP_PORT && NGINX_PORT ]]; then

    sed -i s/APP_CONTAINER/"$APP_CONTAINER"/g /etc/nginx/sites-enabled/site.conf
    sed -i s/APP_PORT/"$APP_PORT"/g /etc/nginx/sites-enabled/site.conf
    sed -i s/NGINX_PORT/"$NGINX_PORT"/g /etc/nginx/sites-enabled/site.conf

    nginx -g "daemon off;"
else
    echo "Variables APP_CONTAINER,  APP_PORT or NGINX_PORT not set - Please set this using the -e flag"
fi