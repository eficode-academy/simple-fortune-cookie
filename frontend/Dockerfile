##
## Build
##

FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY *.go ./
ADD ./static ./static
ADD ./templates ./templates

RUN go test 

RUN go build -o /frontend

##
## Deploy
##

FROM ubuntu:latest 

WORKDIR /

COPY --from=build /frontend /frontend
COPY --from=build /app/static/ /static
COPY --from=build /app/templates/ /templates

EXPOSE 8080

ENTRYPOINT ["/frontend"]