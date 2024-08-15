# build stage
FROM golang:1.19-alpine AS builder
WORKDIR /backend
COPY . .
RUN go mod download && go mod verify && \
go build -o cookie-backend

# final stage
FROM alpine:latest
WORKDIR /app
COPY --from=builder /backend .
EXPOSE 9000
ENTRYPOINT ["./cookie-backend"]
