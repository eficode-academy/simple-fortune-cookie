#! /bin/bash
curl --write-out %{http_code} --silent --output /dev/null www.bbc.co.uk/news

if [[ "$status_code" -ne 200 ]] ; then
  echo "Site status changed to $status_code" | mail -s "SITE STATUS CHECKER" "my_email@email.com" -r "STATUS_CHECKER"
else
  exit 0
fi