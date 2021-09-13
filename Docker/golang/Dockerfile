FROM golang:latest as golang_dev

ENV GOPATH /go/
ENV GO111MODULE on
#ENV GOPRIVATE=*gitlab.city-srv.ru

# переход к папке в контейнере
WORKDIR /go/src

# копируем необходимые для Dockerfile файлы
#COPY ./src/go.mod ./
#COPY ./src/go.sum ./
#COPY ./src/cmd/main.go ./cmd/
COPY ./src/ ./

# скачиваем нужные зависимости для go
RUN go mod tidy
#RUN go mod download

# билдим go бинарник
#RUN go build -o ../ ./cmd/main.go

# запускаем сбилженый бинарник во время docker up ()
#CMD go build -o ../ ./cmd/main.go && ../main
CMD go build -o ../bin ./cmd/main.go && ../bin/main
#ENTRYPOINT go build -o ../ ./cmd/main.go && ../main