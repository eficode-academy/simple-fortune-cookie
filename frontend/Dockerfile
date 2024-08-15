FROM golang:1.21.13-alpine3.20 AS builder

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o frontend .

FROM golang:1.21.13-alpine3.20

WORKDIR /app

COPY . .

COPY --from=builder /app/frontend .

EXPOSE 8080

CMD ["./frontend"]