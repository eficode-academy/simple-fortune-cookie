FROM golang:1.19
WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o backend . 

EXPOSE 9000

CMD [ "./backend" ]
