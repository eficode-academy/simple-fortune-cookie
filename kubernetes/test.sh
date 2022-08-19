port=$(kubectl get service | grep frontend | tr -s ' ' | cut -d ' ' -f 5 | cut -c4-8)
echo port is $port
ip=$(kubectl get nodes -o wide | head -n 2 | awk '{print $7}' | sed -n 2p)
echo ip is $ip
ready=$(curl $ip:$port/api/all)
p=$(grep \<p\\\> <<< "$ready")
if [ -z "$p" ]
then
  exit 1
else
  echo works #this should work
fi
