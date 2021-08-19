FROM golang:1.16

EXPOSE 8080

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /cookie-frontend

ENTRYPOINT ["/cookie-frontend"]