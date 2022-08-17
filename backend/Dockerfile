FROM golang:1.19.0-alpine AS build

COPY ./ /app
WORKDIR /app

RUN go mod download
RUN go build

FROM golang:1.19.0-alpine
COPY --from=build /app /app
WORKDIR /app

ENTRYPOINT ["go", "run"]
CMD ["main.go"]