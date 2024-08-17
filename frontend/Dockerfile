FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .

RUN go build -o frontend-app

EXPOSE 9000

CMD ["./frontend-app"]
