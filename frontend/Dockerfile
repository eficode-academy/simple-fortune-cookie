FROM golang:1.18
COPY . /app
RUN apt-get update \
    && apt-get install golang -y
EXPOSE 8080
CMD [go build frontend]
CMD [go run frontend]