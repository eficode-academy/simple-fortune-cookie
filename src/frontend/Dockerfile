FROM golang:1.17.0
COPY ./frontend ./
COPY ./static ./static/
COPY ./templates ./templates/
RUN chmod +x /go/frontend
EXPOSE 8080/tcp
ENTRYPOINT ["/go/frontend"]