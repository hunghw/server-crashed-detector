#!/usr/bin/sh

STATUS_CODE=$(curl -m 60 -o /dev/null -s -w "%{http_code}\n" https://server.url)

if [ $STATUS_CODE != "200" ]; then
    echo $STATUS_CODE
    curl -m 60 https://webhook.url
fi
