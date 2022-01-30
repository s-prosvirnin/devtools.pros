#!/usr/bin/env bash

echo "--------------- start in http://localhost:8091 -----------------"

# запускаем основной контейнер из кэша
sudo PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file docker-compose.yml up
