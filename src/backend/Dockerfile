FROM golang:1.17.0
COPY ./backend ./
RUN chmod +x /go/backend
EXPOSE 9000/tcp
ENTRYPOINT ["/go/backend"]