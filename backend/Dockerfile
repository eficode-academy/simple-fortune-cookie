FROM golang:latest

WORKDIR ~
ENV CGO_ENABLED=0 

RUN mkdir backend
COPY ./** ./backend/

RUN cd ./backend && \
    GOOS=linux && \
    go build -a -o golang-memtest .

CMD ["sh","./backend/launch.sh"]
