##
## Build
##

FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o /frontend

##
## Deploy
##

FROM ubuntu:latest 

WORKDIR /

COPY --from=build /frontend /frontend

EXPOSE 8080

ENTRYPOINT ["/frontend"]