FROM golang:1.19 as builder
WORKDIR /go/source/app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -o backend

FROM scratch as backend
COPY --from=builder /go/source/app/backend /backend
CMD ["/backend"]