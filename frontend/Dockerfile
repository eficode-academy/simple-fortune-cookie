FROM golang:1.16
WORKDIR /app
COPY . ./ 
RUN go mod download
RUN go build -o /go-frontend
EXPOSE 8080
CMD /go-frontend