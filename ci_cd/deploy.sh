#!/bin/bash
if [ -z "$(sudo -u ubuntu kubectl get deployment | grep deployment-backend)" ]; then
    sudo -u ubuntu kubectl create -f manifest/deployment-backend.yaml
else
    echo "docker_tag: ${docker_tag}"
    [[ -z "${docker_tag}" ]] && exit 1

    sudo -u ubuntu kubectl set image deployments/deployment-backend simple-fortune-cookie-backend=diblo/simple-fortune-cookie-backend:${docker_tag}
fi
[[ "$?" != "0" ]] && exit 1

sudo -u ubuntu kubectl apply -f manifest/service-backend.yaml
[[ "$?" != "0" ]] && exit 1

# =======================

if [ -z "$(sudo -u ubuntu kubectl get deployment | grep deployment-frontend)" ]; then
    sudo -u ubuntu kubectl create -f manifest/deployment-frontend.yaml
else
    echo "docker_tag: ${docker_tag}"
    [[ -z "${docker_tag}" ]] && exit 1

    sudo -u ubuntu kubectl set image deployments/deployment-frontend simple-fortune-cookie-frontend=diblo/simple-fortune-cookie-frontend:${docker_tag}
fi
[[ "$?" != "0" ]] && exit 1

sudo -u ubuntu kubectl apply -f manifest/service-frontend.yaml
exit $?
