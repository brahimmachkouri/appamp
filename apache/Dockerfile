ARG APACHE_VERSION=""
ARG PHP_VERSION=""
FROM httpd:${APACHE_VERSION:+${APACHE_VERSION}-}alpine

RUN apk update; \
    apk upgrade;

RUN apk add \
  bash \
  apache2 \
  php${PHP_VERSION}-apache2 \
  curl \
  ca-certificates \
  openssl \
  git \
  zip \
  unzip \
  php${PHP_VERSION} \
  php${PHP_VERSION}-phar \
  php${PHP_VERSION}-ldap \
  php${PHP_VERSION}-json \
  php${PHP_VERSION}-iconv \
  php${PHP_VERSION}-openssl \
  tzdata \
  openntpd \
  php${PHP_VERSION}-ftp \
  php${PHP_VERSION}-mbstring \
  php${PHP_VERSION}-soap \
  php${PHP_VERSION}-gmp \
  php${PHP_VERSION}-pdo_odbc \
  php${PHP_VERSION}-dom \
  php${PHP_VERSION}-pdo \
  php${PHP_VERSION}-zip \
  php${PHP_VERSION}-mysqli \
  php${PHP_VERSION}-sqlite3 \
  php${PHP_VERSION}-bcmath \
  php${PHP_VERSION}-gd \
  php${PHP_VERSION}-odbc \
  php${PHP_VERSION}-pdo_mysql \
  php${PHP_VERSION}-pdo_sqlite \
  php${PHP_VERSION}-gettext \
  php${PHP_VERSION}-xmlreader \
  php${PHP_VERSION}-xmlwriter \
  php${PHP_VERSION}-tokenizer \
  php${PHP_VERSION}-bz2 \
  php${PHP_VERSION}-pdo_dblib \
  php${PHP_VERSION}-curl \
  php${PHP_VERSION}-ctype \
  php${PHP_VERSION}-session \
  php${PHP_VERSION}-exif;

RUN sed -i "s/#LoadModule\ rewrite_module/LoadModule\ rewrite_module/" /usr/local/apache2/conf/httpd.conf;

# Copy apache vhost file to proxy php requests to php-fpm container
COPY app.conf /usr/local/apache2/conf/app.conf
RUN echo "Include /usr/local/apache2/conf/app.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# copy the bootstrap file into the container
COPY bootstrap-httpd.sh /startup/
RUN chmod +x /startup/bootstrap-httpd.sh
