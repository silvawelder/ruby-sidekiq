#!/bin/bash
docker container stop sidekiq
docker container rm sidekiq
docker image rm sidekiq
