FROM stackbrew/ubuntu:12.04
MAINTAINER Adam K Dean <adamkdean@googlemail.com>

RUN apt-get update -qq && apt-get -y install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-available/default
ADD src/ /var/www

EXPOSE 80

CMD "nginx"