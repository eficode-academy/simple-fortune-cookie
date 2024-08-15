FROM golang:1.16

WORKDIR /app/frontend

COPY frontend/go.mod ./

RUN go mod download

COPY frontend/ .

RUN go build -o frontend .

FROM debian:bullseye-slim

WORKDIR /app

COPY --from=builder /app/frontend /app/

EXPOSE 8080

CMD ["./frontend"]