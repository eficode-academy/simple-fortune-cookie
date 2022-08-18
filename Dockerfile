# Build
FROM golang:1.13.2 as builder
ADD . /src/
RUN cd /src/backend && go build -o backend
RUN cd /src/frontend && go build -o frontend

# Run
FROM scratch as backend
COPY --from=builder /src/backend/backend /
ENTRYPOINT ["/backend"]

FROM scratch as frontend
COPY --from=builder /src/frontend/frontend /
ENTRYPOINT ["/frontend"]
