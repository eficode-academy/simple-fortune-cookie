##
## Build
##

FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /backend

##
## Deploy
##

FROM ubuntu:latest 

WORKDIR /

COPY --from=build /backend /backend

EXPOSE 9000

ENTRYPOINT ["/backend"]