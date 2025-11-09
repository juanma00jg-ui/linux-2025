FROM ubuntu:latest

RUN apt-get update && apt-get install nginx -y 

#ENV APACHE_RUN_USER WWW-DATA

EXPOSE 80

COPY index.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]


