#!/bin/bash
echo "docker_id: ${docker_id}, docker_image: ${docker_image}, docker_version: ${docker_version}, docker_port: ${docker_port}"

[[ -z "${docker_id}" ]] && exit 1
[[ -z "${docker_image}" ]] && exit 1
[[ -z "${docker_version}" ]] && exit 1
[[ -z "${docker_port}" ]] && exit 1

docker run -d -p 127.0.0.1:${docker_port}:${docker_port}/tcp ${docker_id}/${docker_image}:${docker_version}

exit $?
