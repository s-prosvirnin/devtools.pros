FROM golang:latest as golang_dev

# переход к папке в контейнере
WORKDIR /app/src

# копируем необходимые для Dockerfile файлы
COPY ./src/go.mod ./
COPY ./src/go.sum ./
COPY ./src/cmd/main.go ./cmd/

# скачиваем нужные зависимости для go
RUN go mod tidy
#RUN go mod download

# билдим go бинарник
#RUN go build -o ../ ./cmd/main.go

# запускаем сбилженый бинарник во время docker up ()
CMD go build -o ../ ./cmd/main.go && ../main
#ENTRYPOINT go build -o ../ ./cmd/main.go && ../main