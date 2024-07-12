#!/bin/bash

# Check server health status
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

if [ $STATUS_CODE -ne 200 ]; then
  echo "Server health check failed with status code $STATUS_CODE"
  exit 1
else
  echo "Server is healthy with status code $STATUS_CODE"
fi

