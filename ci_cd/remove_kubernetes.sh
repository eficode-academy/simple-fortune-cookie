#!/bin/bash

name=${docker_image}-test-${docker_run_id}

echo "docker_image: ${docker_image}, docker_run_id: ${docker_run_id}, name: ${name}"

[[ -z "${docker_image}" ]] && exit 1
[[ -z "${docker_run_id}" ]] && exit 1

sudo -u ubuntu kubectl delete service ${name}
sudo -u ubuntu kubectl delete deployment ${name}

exit $?