FROM golang:1.16-alpine
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY *.go ./

RUN go build -o /cookie-backend

EXPOSE 8080

CMD ["/cookie-backend"]