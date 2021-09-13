#!/usr/bin/env bash

# выполнение команды внутри контейнера
docker run --rm -it golang_golang.dev $1
# так, вроде, нет синхронизации из контейнера в локальную папку
#docker-compose exec -e TZ=Europe/Moscow golang.dev $1

# примеры
# ./execute.sh 'go build -o ../ ./cmd/main.go'
# ./execute.sh 'go mod download'
# docker run --rm -it golang_golang.dev /bin/sh
# docker exec -it golang.run.dev /bin/bash
# ./execute.sh 'go build -o ../ ./cmd/main.go && ../main'