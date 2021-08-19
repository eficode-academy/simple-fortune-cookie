#!/bin/bash

word_dir=$(pwd)

# Run backend
cd $word_dir/backend
go run . > /dev/null 2>&1 &

# Run frontend
cd $word_dir/frontend
go run . > /dev/null 2>&1 &
