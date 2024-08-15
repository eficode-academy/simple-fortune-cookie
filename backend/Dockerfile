FROM golang:1.21.13-alpine3.20 AS builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

RUN go build -o backend .

FROM golang:1.21.13-alpine3.20

WORKDIR /app

COPY . .

COPY --from=builder /app/backend .

EXPOSE 9000

CMD ["./backend"]