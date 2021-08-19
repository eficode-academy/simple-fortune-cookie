set -eux

declare -r HOST="http://localhost:8080"

wait-for-url() {
    echo "Testing $1"
    timeout -s TERM 45 bash -c \
    'while [[ "$(curl -s -o /dev/null -L -w ''%{http_code}'' ${0})" != "200" ]];\
    do echo "Waiting for ${0}" && sleep 2;\
    done' ${1}
    echo "OK!"
    curl -I $1
}

cd configuration && docker-compose up & cd .. && wait-for-url http://${HOST} && go test ./frontend/main_test.go