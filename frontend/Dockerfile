# syntax=docker/dockerfile:1
FROM golang:1.16-alpine


WORKDIR /frontend
COPY . /frontend/

COPY go.mod ./

RUN go mod download 

RUN go build -o /docker-frontend

CMD ["/docker-frontend"]