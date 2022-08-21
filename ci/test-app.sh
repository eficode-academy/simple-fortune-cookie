#! /bin/bash
url=$("<ENTER URL HERE>")
result=$(curl --write-out %{http_code} --silent --output /dev/null $url)

if [ “$result” == “200” ] ; then
  echo “OK”
else
  echo $result
  exit 1
fi

