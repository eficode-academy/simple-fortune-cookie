FROM ubuntu

RUN apt-get update && apt-get install -y  golang-go

COPY /backend /usr/local/backend 
COPY /frontend /usr/local/frontend
COPY /images /usr/local/images
