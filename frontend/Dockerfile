FROM golang:1.16

WORKDIR /go/src/app
COPY . .

RUN go get -d .
RUN go install .

RUN go build

EXPOSE 8080:8080

CMD ["frontend"]