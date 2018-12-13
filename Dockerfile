FROM node:10-alpine

RUN apk add mariadb; \
  npm install -g grunt; \
  wget https://github.com/jsbin/jsbin/tarball/v4.1.7; \
  tar xf v4.1.7; \
  cd jsbin-jsbin-015e3a7; \
  npm i grunt --save-dev; \
  grunt build

COPY config.json /jsbin-jsbin-015e3a7/

ENV JSBIN_CONFIG=/jsbin-jsbin-015e3a7/config.json

CMD /jsbin-jsbin-015e3a7/bin/jsbin
