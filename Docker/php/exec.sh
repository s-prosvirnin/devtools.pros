#!/usr/bin/env bash

#выполняем команду в контейнере в консоли
sudo docker run --rm -it -e TZ=Europe/Moscow --name php-fpm -v $PWD:/app php:7.4-fpm $1