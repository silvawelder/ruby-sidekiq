#!/bin/bash
docker container stop sidekiq-app
docker container rm sidekiq-app
docker image rm sidekiq-app
