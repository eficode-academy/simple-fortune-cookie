FROM golang:1.18
WORKDIR /app
COPY . .
RUN apt-get update \
    && apt-get install golang -y
RUN go build
EXPOSE 9000
CMD go run backend