FROM golang:latest
RUN mkdir app
COPY . /app
WORKDIR /app/
RUN go build
EXPOSE 8080
CMD ["go","run","frontend"]