FROM golang:latest

ENV CGO_ENABLED=0
ENV GOOS=linux

COPY . .

RUN go build
 # cd ./backend && \
#    go build -a -o golang-memtest .

CMD ["sh","./backend/launch.sh"]
