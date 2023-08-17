#Builder
FROM golang:1.13-alpine3.11 as builder
WORKDIR /usr/local/backend
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a

# generate clean, final image for end users
FROM scratch
COPY --from=builder /usr/local/backend .
ENTRYPOINT ["./backend"]  

