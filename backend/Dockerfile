FROM golang:latest

WORKDIR ~
ENV CGO_ENABLED=0 

RUN mkdir backend
COPY ./** ./backend/

RUN 
    # cd ./backend && \
    # GOOS=linux go build -a -o golang-memtest .
    docker build -t "simple-fortune-cookie_go-backend:latest" -t "simple-fortune-cookie_go-backend:latest:1.0-$Tag" backend/

CMD ["bash","./backend/launch.sh"]
