#!/bin/bash
echo "docker_id: ${docker_id}, docker_token: ${docker_token}, docker_image: ${docker_image}, docker_tag: ${docker_tag}"

[[ -z "${docker_id}" ]] && exit 1
[[ -z "${docker_token}" ]] && exit 1
[[ -z "${docker_image}" ]] && exit 1
[[ -z "${docker_tag}" ]] && exit 1

echo "${docker_token}" | docker login --username "${docker_id}" --password-stdin
docker push "${docker_id}/${docker_image}:${docker_tag}" 
docker push "${docker_id}/${docker_image}:latest" &
wait

exit 0