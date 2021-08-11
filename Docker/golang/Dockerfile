FROM golang:latest

WORKDIR /app


#RUN apt-get update && apt-get install -y

COPY ./src .

#COPY ./go.mod .

#RUN go mod init example
#RUN go mod download
RUN go mod tidy
#RUN go get github.com/gin-gonic/gin
#RUN  go get github.com/gin-gonic/gin  github.com/s-prosvirnin/devtools.pros
#RUN go build github.com/s-prosvirnin/devtools.pros/cmd
#WORKDIR /src/cmd
#RUN go build -o ./ ./cmdd/main.go
RUN go build github.com/s-prosvirnin/devtools.pros/
#RUN go build -v ./cmd
#RUN go build -v  ./cmd/

RUN chown -R $user:$group /app
RUN chmod 777 ./cmdd

WORKDIR /app

#CMD ./cmdd
#CMD cd ./ && ls -la
#CMD go env
CMD ls -la /go