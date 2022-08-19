FROM golang:latest
WORKDIR /frontend
COPY . .
EXPOSE 8080
RUN [ "go", "build" ]
CMD [ "go", "run", "." ]