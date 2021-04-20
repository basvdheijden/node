FROM node:14.15.5-alpine3.10

WORKDIR /var/www/

RUN echo Europe/Paris | tee /etc/timezone \
  && apk update \
  && apk add tzdata python alpine-sdk unzip git curl vim \
  && cp /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime \
	&& echo "Europe/Amsterdam" > /etc/timezone \
  && npm install -g grunt-cli nodemon