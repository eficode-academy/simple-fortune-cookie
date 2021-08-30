# Dockerfile for the simple-cookie application

FROM golang:1.17.0-alpine AS builder

COPY . /project

WORKDIR /project/frontend

RUN go build

FROM alpine AS final

COPY --from=builder /project/frontend/frontend /frontend

EXPOSE 8080

ENTRYPOINT ["/frontend"]