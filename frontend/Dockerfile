FROM golang:latest
WORKDIR frontend
COPY frontend ./
EXPOSE 8080
RUN ["chmod", "+x", "frontend"]
RUN ["./frontend"]
