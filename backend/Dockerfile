FROM golang:1.18
WORKDIR /app
COPY . .
RUN apt-get update \
    && apt-get install golang -y
RUN pwd && ls 
RUN go build
EXPOSE 80/tcp
CMD [go run backend]