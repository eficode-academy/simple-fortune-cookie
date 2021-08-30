FROM golang:1.17-alpine AS builder

COPY . /project

WORKDIR /project/backend

RUN go build

FROM alpine AS final

COPY --from=builder /project/backend/backend /backend

EXPOSE 9000

ENTRYPOINT ["/backend"]
