FROM golang:1.16-alpine


ENV GOPATH=/.

COPY . ./

RUN go build 

EXPOSE 8080

CMD ["go", "run", "frontend"]
