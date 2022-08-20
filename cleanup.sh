if [ $# -eq 0 ]
    then
        echo "No arguments supplied. This script will clean up EVERYTHING. Pass -y to run."
else
    if [ "$1" = "-y" ]
        then
            echo "Cleaning up EVERYTHING.." 
            kubectl delete -f kubernetes/configs
            kubectl delete -f kubernetes/deployments
            kubectl delete -f kubernetes/services
            kubectl delete -f kubernetes/volume-claims
            kubectl delete -f redis-pod.yaml
    else
        echo "This script will clean up EVERYTHING. Pass -y to run."
    fi
fi