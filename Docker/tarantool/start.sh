#!/usr/bin/env bash

PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file Docker/tarantool/docker-compose.yml up