ready=$(curl $1:$2/api/all)
p=$(grep \<p\\\> <<< "$ready")
if [ -z "$p" ]
then
  echo "0"
else
  echo "1"
fi
