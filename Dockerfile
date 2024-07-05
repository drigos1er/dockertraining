FROM ubuntu:24.04

MAINTAINER drigos1er

RUN apt-get update && apt-get  -y install nginx git

RUN rm -Rf /var/www/html/*

RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
