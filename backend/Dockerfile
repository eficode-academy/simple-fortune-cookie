FROM golang:latest

WORKDIR ~
ENV CGO_ENABLED=0 

RUN mkdir backend
COPY ./** ./backend/

RUN cd ./backend && \
    GOOS=linux go build -o golang-memtest .

CMD ["bash","./backend/launch.sh"]
