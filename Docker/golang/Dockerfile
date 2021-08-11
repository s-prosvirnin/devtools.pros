FROM golang:latest
WORKDIR /app

#RUN apt-get update && apt-get install -y

COPY . .
RUN go mod download
RUN go build github.com/s-prosvirnin/devtools.pros/cmd/main

CMD service rsyslog start && ./main