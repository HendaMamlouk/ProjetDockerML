#!/bin/bash
docker build -t docker1.test .
docker run -d -p 56733:80 --name=docker1.test -v $PWD:/app docker1.test

