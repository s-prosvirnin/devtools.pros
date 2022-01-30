FROM php:7.4-fpm


RUN echo "---------------START BUILD PHP_FPM-----------------"

#RUN apt-get update
#RUN apt-get install sudo

#RUN apt-get install --no-install-recommends -y \
    #software-properties-common \
    #wget \
    #git \
    #gnupg \
    #apt-utils \
    #apt-transport-https

#RUN apt-get install -y locales locales-all
#ENV LC_ALL en_US.UTF-8
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US.UTF-8



RUN apt-get install --no-install-recommends -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    zlib1g-dev \
    libxml2-dev \
    libicu-dev \
    libaio-dev \
    libssl-dev \
    libc-client-dev \
    openssl \
    libkrb5-dev \
    libpq-dev \
    supervisor \
    g++ \
    apache2-utils

RUN docker-php-ext-install pdo

RUN docker-php-ext-install pcntl
RUN apt-get -y install libzip-dev
RUN apt-get -y install unzip
RUN docker-php-ext-install zip

#RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql
#RUN docker-php-ext-install pdo_pgsql

#xdebug
RUN pecl uninstall xdebug
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

# Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

ADD ./php.ini /usr/local/etc/php/php.ini

WORKDIR /src

#передаем права указанному в аргументах юзеру
#RUN chown -R www-data:www-data /app
RUN chown -R $user:$group /src

