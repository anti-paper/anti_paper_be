FROM php:fpm-buster

COPY ./php/conf /usr/local/etc/php

RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip \
    vim \
    less

RUN docker-php-ext-install pdo_mysql

RUN cd /usr/bin \
    && curl -s http://getcomposer.org/installer | php \
    && ln -s /usr/bin/composer.phar /usr/bin/composer

WORKDIR /var/www/html
