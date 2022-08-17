FROM golang:1.19.0-alpine AS build

COPY ./ /app
WORKDIR /app

RUN go mod download
RUN go build -o app

FROM golang:1.19.0-alpine

LABEL org.opencontainers.image.source "https://github.com/amatzen/SE05-CD-SimpleFortuneCookie"

COPY --from=build /app /app
WORKDIR /app

ENTRYPOINT ["./app"]