#!/bin/bash

name=${docker_image}-test-${docker_run_id}

echo "docker_id: ${docker_id}, docker_image: ${docker_image}, docker_tag: ${docker_tag}, docker_port: ${docker_port}, docker_run_id: ${docker_run_id}, name: ${name}"

[[ -z "${docker_id}" ]] && exit 1
[[ -z "${docker_image}" ]] && exit 1
[[ -z "${docker_tag}" ]] && exit 1
[[ -z "${docker_port}" ]] && exit 1
[[ -z "${docker_run_id}" ]] && exit 1

sudo -u ubuntu kubectl create deployment ${name} --image=${docker_id}/${docker_image}:${docker_tag}
[[ "$?" != "0" ]] && exit 1

sudo -u ubuntu kubectl expose deployment ${name} --port ${docker_port} --type ClusterIP
exit $?

sleep 5
