IP=$(kubectl get nodes -o wide | pcregrep -i -o1 '\d+\.\d+\.\d+\.\d+[ ]+(\d+\.\d+\.\d+\.\d+)' | tail -1)
PORT=$(kubectl get services |  pcregrep -i -o1 '\d+:(\d+)')
ADDRESS=$IP:$PORT

if [ $# -eq 0 ]
  then
    echo "No arguments supplied. Please provide time and concurrent calls"
else
  while read line; do
    URL=http://$ADDRESS$line
    echo Sieging $URL
    siege -t$1 -c$2 -v $URL
  done < endpoints.txt
fi