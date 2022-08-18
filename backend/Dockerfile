# syntax=docker/dockerfile:1
FROM ubuntu


WORKDIR /backend
COPY . .

#install go on ubuntu container 
RUN apt-get update -y && apt-get install redis -y 
RUN go build . 

RUN go mod download github.com/gomodule/redigo

CMD ["go", "run", "."]