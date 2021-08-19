FROM golang:latest
RUN apt-get update   
RUN apt-get install -y git

WORKDIR /app
        
RUN git clone https://github.com/LHTNGUYEN/simple-fortune-cookie.git

WORKDIR /app/simple-fortune-cookie/backend

EXPOSE 8080

RUN go mod init backend \ 
&& go mod tidy \
&& go build 
CMD ./backend

