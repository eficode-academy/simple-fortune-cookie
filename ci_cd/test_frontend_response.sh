#!/bin/bash
address=127.0.0.1:8080
if [ ! -z "${docker_image}" ] && [ ! -z "${docker_run_id}" ]; then
    for (( c=1; c<=20; c++ ))
    do
        echo 'Make an attempt to get address...'

        address=$(sudo -u ubuntu kubectl describe service ${docker_image}-test-${docker_run_id} | grep Endpoints: | awk '{print $2;}')
        [[ "${address}" == "<none>" ]] && address=""
        [[ ! -z "${address}" ]] && break

        sleep 3
    done

    echo "docker_image: ${docker_image}, docker_run_id: ${docker_run_id}, address: ${address}"
    [ -z "${address}" ] && exit 1
fi

for (( c=1; c<=20; c++ ))
do
    echo 'Make an attempt to get response...'

    if [ ! -z "$(curl --silent ${address} | grep '<title>Simple Fortune Cookie</title>')" ]; then
        echo 'Response ok'
        exit 0
    fi

    sleep 3
done

echo 'It was not possible to get the right answer from the frontend!'
exit 1