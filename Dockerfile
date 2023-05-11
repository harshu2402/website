FROM ubuntu:latest
RUN apt-get update 
RUN apt-get install -y apache2
ADD ./index.html /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
