FROM golang:bullseye AS builder

COPY . /mnt/app

WORKDIR /mnt/app

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build

FROM scratch

COPY --from=builder /mnt/app/backend /app/backend

EXPOSE 9000

ENTRYPOINT ["/app/backend"]
