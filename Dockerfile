FROM ubuntu:24.04

RUN apt update && apt install nginx -y

RUN rm -rf /var/www/html/

COPY ./ /var/www/html/

ENTRYPOINT ["nginx" , "-g" , "daemon off;"]
