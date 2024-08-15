FROM golang:1.21.13-alpine3.20 AS builder

WORKDIR /app

COPY . .

RUN go build -o frontend .

FROM golang:1.21.13-alpine3.20 AS final

WORKDIR /frontend

COPY --from=builder /app/frontend .

EXPOSE 9000

CMD ["./frontend"]