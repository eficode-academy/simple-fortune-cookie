FROM golang:latest

WORKDIR /app

COPY . .
RUN go mod download

CMD ["go", "run", "backend"]