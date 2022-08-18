# syntax=docker/dockerfile:1
FROM golang:1.16-alpine


WORKDIR /backend
COPY . .

RUN go build . 

RUN go mod download github.com/gomodule/redigo

CMD ["go run ."]