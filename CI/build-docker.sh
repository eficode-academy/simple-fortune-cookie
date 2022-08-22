[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}${docker_repo}:latest" -t "${DockerRepo}${docker_repo}:1.0-$Tag" app/