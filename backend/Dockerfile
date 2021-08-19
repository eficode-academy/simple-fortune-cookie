FROM golang:1.16 AS builder
WORKDIR /go/src/app/backend/
RUN go get -d -v golang.org/x/net/html  
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o backend .
FROM alpine:latest  
WORKDIR /root/
COPY --from=builder /go/src/app/backend/ ./
CMD ["./backend"] 