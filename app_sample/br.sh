#!/bin/bash
echo "------IMAGE BUILD-----------------------"
docker image build -t sidekiq-app -f Dockerfile .
echo "------ FIM IMAGE BUILD------------------"
echo "******************************************"
echo "------RUN CONTAINER-----------------------"
docker run -d --name sidekiq-app --env-file env sidekiq-app:latest

