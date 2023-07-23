#!/bin/bash
echo "------STOP CONTAINER-------------------------"
docker container stop sidekiq-app
echo "*********************************************"
echo "------REMOVE CONTAINER-----------------------"
docker container rm sidekiq-app
echo "**********************************************"
echo "------REMOVE IMAGE---------------------------"
docker image rm sidekiq-app
echo "**********************************************"
