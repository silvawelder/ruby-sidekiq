#!/bin/bash
echo "------STOP CONTAINER-------------------------"
docker container stop sidekiq
echo "*********************************************"
echo "------REMOVE CONTAINER-----------------------"
docker container rm sidekiq
echo "*********************************************"
echo "------REMOVE IMAGE---------------------------"
docker image rm sidekiq
echo "*********************************************"