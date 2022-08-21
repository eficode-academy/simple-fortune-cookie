#!/bin/bash
echo "deploying app now ..."
go env -w GO111MODULE=auto
cd backend/
ls -la
go run .