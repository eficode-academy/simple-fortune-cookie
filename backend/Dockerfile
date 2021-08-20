FROM golang:latest
RUN mkdir db
COPY . /db
WORKDIR /db/
RUN go build
CMD ["go","run","backend"]