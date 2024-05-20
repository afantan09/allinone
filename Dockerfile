FROM ubuntu:22.04
RUN apt update && apt install -y nginx mysql-server php-fpm php-mysql
RUN sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php/7.4/fpm/php.ini
EXPOSE 80 443
CMD service nginx start && service mysql start && service php7.4-fpm start && bash

