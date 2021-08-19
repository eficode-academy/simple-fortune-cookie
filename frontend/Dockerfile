FROM golang:1.16 AS builder
WORKDIR /go/src/app/frontend/
RUN go get -d -v golang.org/x/net/html  
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o frontend .
FROM alpine:latest  
WORKDIR /root/
COPY --from=builder /go/src/app/frontend/ ./
EXPOSE 8080
CMD ["./frontend"] 