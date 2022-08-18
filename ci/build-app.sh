
cd ./backend &&
    go mod download github.com/gomodule/redigo && 
    go build . & 
    cd ./frontend &&
    go build .
