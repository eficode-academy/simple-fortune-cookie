FROM golang:1.19 AS builder

WORKDIR /app

COPY ./go.mod ./

RUN go mod download

COPY *.go ./

RUN go build frontend

EXPOSE 8080

CMD ["go", "run", "./frontend"]
