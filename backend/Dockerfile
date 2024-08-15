FROM golang:1.21.13-alpine3.20 AS builder

WORKDIR /app

COPY . .

RUN go build -o backend .

FROM golang:1.21.13-alpine3.20 AS final

WORKDIR /backend

COPY --from=builder /app/backend .

EXPOSE 9000

CMD ["./backend"]