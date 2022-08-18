# syntax=docker/dockerfile:1
FROM golang:1.16-alpine


WORKDIR /frontend
COPY . .

RUN go build . 

CMD ["go", "run", "."]