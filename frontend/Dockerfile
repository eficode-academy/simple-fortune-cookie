# Build stage
FROM golang:1.21 as builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o frontend .

# Run stage
FROM alpine:3.19
COPY --from=builder /app/frontend /frontend
EXPOSE 8080
CMD ["/frontend", "run", "go"]
