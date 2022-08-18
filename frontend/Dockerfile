FROM golang:1.16-alpine

WORKDIR /app

COPY . .

EXPOSE 8080

RUN chmod +x ./frontend

CMD go run .