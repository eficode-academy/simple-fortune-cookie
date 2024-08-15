FROM golang:1.16 AS builder

WORKDIR /app/backend

COPY /backend/go.mod ./
RUN go mod download

COPY backend ./

RUN go build -o backend .

FROM debian:bullseye-slim

WORKDIR /app

COPY --from=builder /app/backend /app/

EXPOSE 9000

CMD ["go run backend"]
