#!/bin/bash
echo "deploying app now ..."
go env -w GO111MODULE=auto
go run backend/
go run frontend/.