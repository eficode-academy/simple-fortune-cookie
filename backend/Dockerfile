FROM golang:latest

ENV CGO_ENABLED=0
ENV GOOS=linux

COPY . .

RUN go build

CMD ["sh","./backend/launch.sh"]
