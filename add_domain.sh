#!/bin/sh

if [ -z $1 ] || [ -z $2 ]
	then
		echo "No arguments supllied"
		echo "Usage:\n"
		echo "./add_domain.sh <PROJECT_ID> <DOMAIN>"
		exit 1
fi

PROJECT_ID=$1
DOMAIN=$2

curl 'https://dashboard.opendns.com/dashboard_ajax.php' -b cookies.txt -c cookies.txt -H 'Origin: https://dashboard.opendns.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'Content-type: application/x-www-form-urlencoded; charset=UTF-8' -H "Referer: https://dashboard.opendns.com/settings/$PROJECT_ID/content_filtering" -H 'X-Requested-With: XMLHttpRequest' -H 'Connection: keep-alive' --data "n=$PROJECT_ID&step2=true&blocked_domain=$DOMAIN&action=add_blocked_domain" --compressed -w "\n"
