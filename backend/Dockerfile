FROM golang:1.19-alpine
LABEL org.opencontainers.image.source=https://github.com/Stefanowich33/simple-fortune-cookie
LABEL org.opencontainers.image.description="Backend for DevOps 22 simple cookie app"

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .

RUN go build -v -o /usr/local/bin .

ENTRYPOINT ["backend"]