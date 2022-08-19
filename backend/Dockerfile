FROM golang:latest

WORKDIR ~
ENV CGO_ENABLED=0
ENV GOOS=linux

RUN mkdir backend
COPY ./** ./backend/

RUN cd ./backend && go build
 # cd ./backend && \
#    go build -a -o golang-memtest .

CMD ["sh","./backend/launch.sh"]
