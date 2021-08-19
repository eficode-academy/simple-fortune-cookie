FROM golang

WORKDIR /backend

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /cookie-backend

ENTRYPOINT ["/cookie-backend"]