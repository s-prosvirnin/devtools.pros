#!/usr/bin/env bash

sudo PWD=$PWD user=$(id -u) group=$(id -g) docker-compose --file Docker/mysql/docker-compose.yml up