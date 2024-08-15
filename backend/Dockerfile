FROM golang:1.19 AS builder

WORKDIR /app

COPY ./go.mod ./go.sum ./

RUN go mod download

COPY *.go ./

RUN go build backend

EXPOSE 5000

CMD ["go", "run", "./backend"]
