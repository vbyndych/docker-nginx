FROM nginx:stable-alpine

ENV WEB_FOLDER_PATH="application/\$domain" SERVER_NAME="~(?<domain>.+).orocrm.test$"

COPY default.conf /etc/nginx/conf.d/default.conf.tmpl

RUN envsubst '$$WEB_FOLDER_PATH $$SERVER_NAME' < /etc/nginx/conf.d/default.conf.tmpl > /etc/nginx/conf.d/default.conf
