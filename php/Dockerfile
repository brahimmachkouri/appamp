ARG PHP_VERSION=""
FROM php:${PHP_VERSION:+${PHP_VERSION}-}fpm-alpine

RUN apk update; \
    apk upgrade;

#RUN docker-php-ext-install mysqli
#RUN docker-php-ext-install pdo pdo_mysql

## in order to install php-intl
#RUN apk add icu-dev 
#RUN docker-php-ext-configure intl && docker-php-ext-install intl

# install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# copy the bootstrap file into the container
COPY bootstrap-php.sh /startup/
RUN chmod +x /startup/bootstrap-php.sh
