FROM golang:1.17.0-alpine as builder
WORKDIR /go/src
COPY ./ ./
RUN go mod tidy && go build
ENTRYPOINT ["./frontend"]