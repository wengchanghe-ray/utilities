#!/bin/bash
#test this is the latest
wget http://localhost:48080/myapp-presentation-0.0.1-SNAPSHOT
if [ -e index.html ]; then
   echo "ok" > result.txt
else 
   echo "no" > result.txt
fi
#2

