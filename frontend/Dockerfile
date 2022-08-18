FROM golang:1.19 as builder
WORKDIR /go/source/app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -o frontend

FROM scratch as frontend
COPY --from=builder /go/source/app/frontend /frontend
CMD ["/frontend"]