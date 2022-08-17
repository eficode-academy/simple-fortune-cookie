#!/bin/sh

cd ./backend && go mod download github.com/gomodule/redigo && go test && cd ..

cd ./frontend && go test && cd ..

