#!/bin/sh

cd ./frontend && go test && cd ..

cd ./backend && go test && cd ..
