FROM golang:latest
WORKDIR /backend
COPY backend ./
EXPOSE 9000
RUN ["chmod", "+x", "backend"]
RUN ["./backend", "&"]
