# syntax=docker/dockerfile:1
FROM golang:1.16-alpine


WORKDIR /backend
COPY . /backend/

COPY go.mod ./
COPY go.sum ./

RUN go mod download
RUN go build -o /docker-backend

EXPOSE 8080

CMD ["/docker-backend"]