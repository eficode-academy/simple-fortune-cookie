FROM golang:1.16-alpine as builder

COPY backend /opt/backend
COPY frontend /opt/frontend

RUN cd /opt/backend && go build
RUN cd /opt/frontend && go build

FROM golang:1.16-alpine as backend
WORKDIR /usr/local/go
COPY --from=builder /opt/backend .
ENTRYPOINT ["go","run","main"]

FROM golang:1.16-alpine as frontend
WORKDIR /usr/local/go
COPY --from=builder /opt/frontend .
ENTRYPOINT ["go","run","frontend"]