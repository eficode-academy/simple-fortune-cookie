FROM golang:1.17.0-alpine as builder
COPY . /go/src
RUN cd /go/src && go mod tidy && go build
ENTRYPOINT ["/go/src/backend"]