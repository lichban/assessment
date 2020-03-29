FROM php:7.3-apache

COPY test.php /app/index.php

COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /app && chmod -R +x /app && a2enmod rewrite


