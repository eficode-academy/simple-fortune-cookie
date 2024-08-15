# Stage 1: Build the Go application
FROM golang:1.16 AS builder

# Set the working directory
WORKDIR /app

# Copy Go module files
COPY frontend/go.mod ./

# Download Go module dependencies
RUN go mod download

# Copy the rest of the application code
COPY frontend/ ./

# Build the Go application
RUN go build -o frontend .

# Stage 2: Create the final runtime image
FROM debian:bullseye-slim

# Set the working directory
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/frontend/frontend /app/

# Expose the port the app runs on
EXPOSE 8080

# Command to run the binary
CMD ["./frontend"]
