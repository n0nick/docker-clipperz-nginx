FROM darron/nginx
MAINTAINER Sagie Maoz <sagie@maoz.info>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git python-git

RUN git clone https://github.com/clipperz/password-manager.git /clipperz
RUN cd /clipperz; /clipperz/scripts/build install --backends php --frontends gamma
RUN ln -s /clipperz/target/php /var/www/clipperz
RUN echo "<? header('Location: /clipperz'); ?>" > /var/www/index.html

EXPOSE 80

CMD service php5-fpm start && nginx
