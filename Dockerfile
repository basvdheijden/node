FROM node:14.15.5-alpine3.10

WORKDIR /var/www/

RUN echo Europe/Paris | tee /etc/timezone \
  && apk update \
  && apk add python alpine-sdk unzip git curl vim \
  && npm install -g grunt-cli nodemon