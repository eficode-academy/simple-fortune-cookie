#!/bin/bash
echo "deploying app now ..."
go env -w GO111MODULE=auto
go build && go run .