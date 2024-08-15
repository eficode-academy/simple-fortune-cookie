# build stage
FROM golang:1.19-alpine AS builder
WORKDIR /frontend
COPY . .
RUN go mod download && go mod verify && \
go build -o cookie-frontend

# final stage
FROM alpine:latest
WORKDIR /app
COPY --from=builder /frontend .
EXPOSE 8080
ENTRYPOINT ["./cookie-frontend"]