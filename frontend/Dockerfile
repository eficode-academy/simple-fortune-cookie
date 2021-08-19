FROM golang:alpine

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY *.go ./

RUN go build -o /frontend

EXPOSE 8080

CMD [ "/frontend" ]