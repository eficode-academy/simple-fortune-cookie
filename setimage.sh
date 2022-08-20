kubectl set image deployment/backend-deployment backend=$1
kubectl set image deployment/frontend-deployment frontend=$2