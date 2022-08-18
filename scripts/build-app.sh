
cd ./backend && 
    go mod download github.com/gomodule/redigo && 
    go run . & 
    cd ./frontend && 
    go run .
