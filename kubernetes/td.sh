#!/bin/bash
kubectl apply -f .
port=$(kubectl get service | grep frontend | tr -s ' ' | cut -d ' ' -f 5 | cut -c4-8)
echo port is $port
ip=$(kubectl get nodes -o wide | head -n 2 | awk '{print $7}' | sed -n 2p)
echo ip is $ip
checknull=$(kubectl get deployment | grep 0)
sleep 25s
echo 1
#ready=$(curl $ip:$port/api/all)
#p=$(grep \<p\\\> <<< "$ready")
#echo $p
#if [ -z "$p" ]
#then
#  echo "0"
#else
#  echo "1"
#fi
#bash 123.sh $ip $port
