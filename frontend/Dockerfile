FROM golang:1.16 AS builder

WORKDIR /app/frontend

COPY frontend/go.mod ./

RUN go mod download

COPY frontend/ .

RUN go build -o frontend .

FROM alpine:latest

RUN apk --no-cache add ca-certificates

COPY --from=builder /app/frontend /app/frontend

COPY frontend /app/frontend

WORKDIR /app/frontend

RUN apk add --no-cache go

CMD ["./frontend"]