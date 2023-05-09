#!/bin/bash

url="http://localhost:80"
log_file="error_log.txt"
email="juliakos498@gmail.com"

response_code=$(curl -s -o /dev/null -w "%{http_code}" $url)

if [[ $response_code -lt 200 || $response_code -ge 400 ]]; then
  echo "$(date): Error - Response code: $response_code" >> $log_file
fi
