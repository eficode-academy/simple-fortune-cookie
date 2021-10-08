FROM golang:bullseye AS builder

COPY . /mnt/app

WORKDIR /mnt/app

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

FROM scratch

WORKDIR /app

COPY --from=builder /mnt/app/frontend ./frontend
COPY --from=builder /mnt/app/templates ./templates
COPY --from=builder /mnt/app/static ./static

EXPOSE 8080

ENTRYPOINT ["/app/frontend"]
