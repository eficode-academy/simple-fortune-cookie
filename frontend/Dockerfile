FROM golang:1.16-alpine AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . ./

RUN go build -o /main 

EXPOSE 8080

## Deploy
FROM alpine:3.11.3
COPY --from=build /main /main
COPY ./static ./static
COPY ./templates ./templates

EXPOSE 8080

ENTRYPOINT ["/main"]