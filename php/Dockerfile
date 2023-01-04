ARG PHP_VERSION=""
FROM php:${PHP_VERSION:+${PHP_VERSION}-}fpm-alpine

RUN apk update; \
    apk upgrade;

#RUN docker-php-ext-install mysqli
#RUN docker-php-ext-install pdo pdo_mysql

## in order to install php-intl
#RUN apk add icu-dev 
#RUN docker-php-ext-configure intl && docker-php-ext-install intl
# php extensions installer: https://github.com/mlocati/docker-php-extension-installer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

# persistent / runtime deps
RUN apk add --no-cache \
		acl \
		fcgi \
		file \
		gettext \
		git \
	;

RUN set -eux; \
    install-php-extensions \
    	intl \
    	zip \
    	apcu \
		opcache \
    ;
# install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# copy the bootstrap file into the container
COPY bootstrap-php.sh /startup/
RUN chmod +x /startup/bootstrap-php.sh
