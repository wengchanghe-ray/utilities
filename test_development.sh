#!/bin/bash
wget http://localhost:58080/myapp-presentation-0.0.1-SNAPSHOT

if [ -d index.html ]; then
    echo "ok" > result.txt
else 
    echo "no" > result.txt
fi
