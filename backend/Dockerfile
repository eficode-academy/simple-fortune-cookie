FROM golang:latest
WORKDIR /backend
COPY . .
EXPOSE 9000
RUN [ "go", "build" ]
CMD [ "go", "run", "." ]
