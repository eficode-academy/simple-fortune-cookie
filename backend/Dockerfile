# Stage 1: Build the Go application
FROM golang:1.18 AS builder

# Set the working directory
WORKDIR /app

# Copy Go module files
COPY backend/go.mod backend/go.sum ./

# Download Go module dependencies
RUN go mod download

# Copy the rest of the application code
COPY backend ./

# Build the Go application
RUN go build -o backend .

# Stage 2: Create the final runtime image
FROM debian:bullseye-slim

# Set the working directory
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/backend /app/

# Expose the port the app runs on
EXPOSE 9000

# Command to run the binary
CMD ["./backend"]
