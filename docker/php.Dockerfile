FROM php:8.4-fpm

ENV ACCEPT_EULA=Y

RUN apt-get update && \
    apt-get install -y git zip vim iputils-ping \
	&& curl --silent --show-error https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
	&& docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql \
	&& docker-php-ext-install mysqli && docker-php-ext-enable mysqli

