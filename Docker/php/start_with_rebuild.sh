#!/usr/bin/env bash

# пересобираем и запускаем основной контейнер
sudo PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file Docker/docker-compose.yml build
