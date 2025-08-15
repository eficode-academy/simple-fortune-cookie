# Build stage
FROM golang:1.21 
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o backend .
EXPOSE 9000
CMD ["./backend", "run", "go"]
