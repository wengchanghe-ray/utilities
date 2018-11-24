#!/bin/bash
wget http://localhost:38080/myapp-presentation-0.0.1-SNAPSHOT
if [ -e index.html ]; then
   echo "ok" > result.txt
else 
   echo "no" > result.txt
fi
