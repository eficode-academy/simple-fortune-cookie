FROM golang:1.19 AS builder

WORKDIR /app

COPY ./go.mod ./

RUN go mod download && go mod verify

COPY *.go ./

RUN go build frontend

FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/frontend /app/
COPY static ./static
COPY templates ./templates

EXPOSE 8080

CMD ["./frontend"]
