FROM node:16-alpine

WORKDIR /var/www/

RUN apk update \
  && apk add tzdata python3 alpine-sdk unzip git curl vim \
  && cp /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime \
	&& echo "Europe/Amsterdam" > /etc/timezone \
  && apk del tzdata \
  && npm install -g grunt-cli nodemon
