FROM golang:1.19 
WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -o frontend . 

EXPOSE 8080

CMD [ "./frontend" ]
