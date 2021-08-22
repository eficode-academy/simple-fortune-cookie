#!/bin/bash

docker_created=$(date --rfc-3339=seconds | sed 's/ /T/')

echo "docker_id: ${docker_id}, docker_image: ${docker_image}, docker_title: ${docker_title}, docker_url: ${docker_url}, docker_version: ${docker_version}, docker_created: ${docker_created}, docker_revision: ${docker_revision}"

[[ -z "${docker_id}" ]] && exit 1
[[ -z "${docker_image}" ]] && exit 1
[[ -z "${docker_title}" ]] && exit 1
[[ -z "${docker_url}" ]] && exit 1
[[ -z "${docker_version}" ]] && exit 1
[[ -z "${docker_revision}" ]] && exit 1

docker build -t "${docker_id}/${docker_image}:latest" -t "${docker_id}/${docker_image}:${docker_version}" . \
        --label "org.opencontainers.image.title=${docker_title}" --label "org.opencontainers.image.source=${docker_url}" \
        --label "org.opencontainers.image.version=${docker_version}" --label "org.opencontainers.image.created=${docker_created}" \
        --label "org.opencontainers.image.revision=${docker_revision}"

exit $?
