FROM golang:latest

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
# COPY go.mod go.sum ./
# RUN go mod download && go mod verify
RUN mkdir frontend
COPY ./** ./frontend/
#COPY ./go.mod .

RUN cd ./frontend && \
    CGO_ENABLED=0 GOOS=linux go build -a -o golang-memtest .

CMD ["go", "run", "./frontend"]
