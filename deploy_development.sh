#!/bin/bash
docker container rm -f aaa
docker build -t aaa .
docker container run -d --name aaa -p 58080:8080 aaa
