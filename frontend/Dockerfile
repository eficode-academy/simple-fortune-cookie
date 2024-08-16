FROM golang:1.21.13-alpine3.20 AS builder

WORKDIR /app

COPY frontend/go.mod ./

RUN go mod download

COPY frontend/*.go ./

RUN go build -o frontend .

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/frontend .

COPY frontend/static ./static

COPY frontend/templates ./templates

RUN apk --no-cache add ca-certificates

EXPOSE 8080

CMD ["./frontend"]