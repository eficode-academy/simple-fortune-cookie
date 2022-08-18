FROM golang:latest

WORKDIR /usr/src/app

COPY . ./

RUN go build

EXPOSE 8080

CMD ["go","run","frontend"] 
