#!/bin/sh

if [ -z $URL ];then
  echo "env: url, can not be empty"
  exit 1
fi

if [ -z $AUTH ];then
  echo "env: auth, can not be empty"
  exit 1
fi

curl -X POST "http://$URL/post" -H "Authorization: Basic $AUTH"