#!/bin/bash

# Validate service by checking the HTTP status code
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

if [ $STATUS_CODE -ne 200 ]; then
  echo "Service validation failed with status code $STATUS_CODE"
  exit 1
else
  echo "Service validation succeeded with status code $STATUS_CODE"
fi

