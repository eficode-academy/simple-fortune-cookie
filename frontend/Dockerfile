#Builder
FROM golang:1.13-alpine3.11 as builder
WORKDIR /usr/local/frontend
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a

FROM scratch
COPY --from=builder /usr/local/frontend .
ENTRYPOINT ["./frontend"]
