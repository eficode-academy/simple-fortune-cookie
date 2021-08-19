FROM golang:1.16

WORKDIR /go/src/app
COPY . .

RUN go get -d .
RUN go install .

RUN go build

EXPOSE 9000:9000

CMD ["backend"]
