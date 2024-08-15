FROM golang:1.19 AS builder

WORKDIR /app

COPY ./go.mod ./go.sum ./

RUN go mod download

COPY *.go ./

RUN go build backend

FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/backend /app/

EXPOSE 5000

CMD ["./backend"]
