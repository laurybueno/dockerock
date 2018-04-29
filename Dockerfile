FROM hacklab/php:7.0-apache

ENV COMPOSER_ALLOW_SUPERUSER=1

COPY config/apache.conf /etc/apache2/sites-available/000-default.conf
COPY . /app

WORKDIR /app
RUN composer install

CMD /app/serve.sh
