FROM golang:latest

ENV CGO_ENABLED=0
ENV GOOS=linux
WORKDIR /usr/src/app

COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .

RUN go build -v -o /usr/local/bin/app ./...

CMD ["app"]