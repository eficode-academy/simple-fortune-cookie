FROM golang:latest

WORKDIR /usr/src/app

COPY . ./

RUN go mod download github.com/gomodule/redigo

RUN go build

EXPOSE 9000

CMD ["go","run","backend"] 