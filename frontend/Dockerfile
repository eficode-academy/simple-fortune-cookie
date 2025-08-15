FROM golang:1.21
WORKDIR /app
COPY . .
RUN go build -o frontend .
EXPOSE 8080
CMD ["/app/frontend"]
