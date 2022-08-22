FROM golang:1.16-alpine AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /main 

## Deploy
FROM alpine:3.11.3
COPY --from=build /main /main

EXPOSE 9000

ENTRYPOINT ["/main"]