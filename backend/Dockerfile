FROM golang:1.16
WORKDIR /app
COPY . ./
RUN go mod download
RUN go build -o /go-backend
EXPOSE 9000
CMD ["/go-backend"]



