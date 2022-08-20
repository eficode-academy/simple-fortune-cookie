FROM golang:1.18
WORKDIR /app
COPY . /app
RUN apt-get update \
    && apt-get install golang -y
RUN go build
CMD [go run frontend]