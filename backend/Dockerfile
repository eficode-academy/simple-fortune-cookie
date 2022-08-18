FROM golang:1.16-alpine

ENV GOPATH=/.

COPY . ./

RUN go mod download 

RUN go build 

EXPOSE 6379

CMD ["go", "run", "backend"]