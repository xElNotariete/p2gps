#!/bin/bash

while ! curl http://localhost:27017/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - connected successfully"

java -jar /usr/local/app/ordering-*.jar
