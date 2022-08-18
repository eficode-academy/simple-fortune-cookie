#!bin/bash
mv -v ~/* ~/backend/
cd ./backend
CGO_ENABLED=0 GOOS=linux go build -a -v -o golang-memtest .
go run .