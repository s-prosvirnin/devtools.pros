#!/usr/bin/env bash

#PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file ./docker-compose.yml up
#PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file ./docker-compose.yml up --build
#PWD=$PWD user=$(id -u) group=$(id -g) docker-compose build  --progress plain --file Docker/golang/docker-compose.yml

PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file ./docker-compose.yml up golang.dev
#PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file ./docker-compose.yml up --build golang.run.dev