SHELL = /bin/sh

.PHONY: build
build:
	PWD=$$(PWD) user=$$(id -u) group=$$(id -g) entrypoint="" docker-compose --file ./docker-compose.yml up --build golang.dev

.PHONY: install
install:
	PWD=$$(PWD) user=$$(id -u) group=$$(id -g) entrypoint="go mod tidy" docker-compose --file docker-compose.yml up golang.dev

.PHONY: run
run:
	PWD=$$(PWD) user=$$(id -u) group=$$(id -g) entrypoint="go run ./cmd/main.go" docker-compose --file docker-compose.yml up golang.dev