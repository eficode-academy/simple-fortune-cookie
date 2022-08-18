FROM golang:1.19-alpine

EXPOSE 8080

WORKDIR /app

COPY go.mod ./
RUN go mod verify

COPY . .

RUN go build -v -o /usr/local/bin/frontend .

ENTRYPOINT ["frontend"]