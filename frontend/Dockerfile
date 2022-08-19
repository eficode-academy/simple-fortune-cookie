#######		Build Stage		######
FROM golang:alpine AS builder
RUN apk update && apk add --no-cache git
WORKDIR $GOPATH/src/
COPY . .

#Get dependencies  & build app
RUN go get -d -v
RUN go build .

#######		Run Stage		######
FROM alpine:latest
COPY --from=builder /go/src/ /go/src/
WORKDIR go/src/
ENTRYPOINT ./frontend
