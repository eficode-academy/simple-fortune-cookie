FROM golang:latest

WORKDIR ~

RUN mkdir frontend
COPY ./** ./frontend/

RUN cd ./frontend && \
    CGO_ENABLED=0 GOOS=linux go build -a -o golang-memtest .

CMD ["bash","./frontend/launch.sh"]
