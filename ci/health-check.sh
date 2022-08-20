echo "Testing wait command"
sleep 5

instance_name=$1
status_code=$(curl --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null http://${instance_name}.eficode.academy:8080/)
if [[ "$status_code" == 200 ]] ; then
    echo "The site is up!"
else
    echo "The site is not running... :-("
    exit 0
fi
