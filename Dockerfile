FROM php:8.4-apache

RUN apt-get update && \
    apt-get install -y curl gnupg libpq-dev && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    docker-php-ext-install pdo_pgsql pgsql && \
    apt-get clean

COPY . /var/www/html

WORKDIR /var/www/html

EXPOSE 90
