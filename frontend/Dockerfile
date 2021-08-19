FROM golang:latest AS base

WORKDIR /app

COPY . .
RUN go mod download
RUN go build

CMD ["./frontend"]