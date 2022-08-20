FROM golang:1.18
COPY . /app
RUN apt-get update \
    && apt-get install golang -y
EXPOSE 9000
CMD [go build backend]
CMD [go run backend]