# Build stage
FROM golang:1.21 
# as builder
WORKDIR /app
COPY . .
RUN go mod download
RUN go build -o backend .
EXPOSE 9000
CMD ["./backend", "run", "go"]

# Run stage
#FROM alpine:3.19
#COPY --from=builder /app/backend backend
#CMD ["backend"]
