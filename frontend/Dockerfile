FROM golang:1.19-alpine
LABEL org.opencontainers.image.source=https://github.com/Stefanowich33/simple-fortune-cookie
LABEL org.opencontainers.image.description="Frontend for DevOps 22 simple cookie app"

EXPOSE 8080

WORKDIR /app

COPY go.mod ./
RUN go mod verify

COPY . .
RUN go install
RUN go build -v -o /usr/local/bin/frontend .

ENTRYPOINT ["frontend"]