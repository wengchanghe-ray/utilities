#!/bin/bash
wget http://localhost:58080/
if [ -e index.html ]; then
   echo "ok" > result.txt
else 
   echo "no" > result.txt
fi
