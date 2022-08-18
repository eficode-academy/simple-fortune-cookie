FROM golang:latest

WORKDIR ~

RUN mkdir backend
COPY ./** ./backend/

RUN cd ./backend && \
    CGO_ENABLED=0 GOOS=linux go build -a -o golang-memtest .

CMD ["bash","./backend/launch.sh"]
