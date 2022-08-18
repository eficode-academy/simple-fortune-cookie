FROM ubuntu:latest
RUN apt-get update && apt-get install golang-go -y
COPY . .
RUN go build frontend
CMD ["go","run", "frontend"]
