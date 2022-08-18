FROM golang:1.18
COPY . /app
RUN apt-get update \
    && apt-get install golang -y
CMD [go build backend]
CMD [go run backend]