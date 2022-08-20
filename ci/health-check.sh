echo "Testing wait command"
sleep 5 &

instance_name=$1
status_code=$(curl -Is http://${instance_name}.eficode.academy:8080/ | head -n 1)
if [[ "$status_code" -ne 200 ]] ; then
    echo "The site is up!"
else
    echo "The site is not running... :-("
    exit 0
fi