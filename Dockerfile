FROM darron/docker-nginx-php5
MAINTAINER Sagie Maoz <sagie@maoz.info>

RUN git clone git@github.com:clipperz/password-manager.git /clipperz
RUN cd /clipperz; ./script/build install --backends php --frontends gamma
RUN ln -s /clipperz/target/php /var/www/clipperz
RUN echo "<? header('Location: /clipperz'); ?>" > /var/www/index.html

EXPOSE 80

CMD service php5-fpm start && nginx
