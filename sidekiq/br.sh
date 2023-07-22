#!/bin/bash
echo "------IMAGE BUILD-----------------------"
docker image build -t sidekiq -f Dockerfile .
echo "------ FIM IMAGE BUILD------------------"
echo "******************************************"
echo "------RUN CONTAINER-----------------------"
docker run -d --name sidekiq --env-file env -p 9292:3030 sidekiq:latest

