FROM golang:1.16-alpine

ENV GOPATH=/.

COPY . ./

RUN go mod download 

RUN go build 

EXPOSE 9000

CMD ["go", "run", "backend"]