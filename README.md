# sidekiq and worker
This repo have the directory app_sample with a ruby application that runs a sidekiq worker and directory sidekiq which have sidekiq web UI.

## stack requeriments
Bellow the requeriments and the order to deploy the stack

1. Redis

```
docker run --name redis -d  -p 6379:6379 -e REDIS_ARGS="--requirepass 123" redis/redis-stack-server:latest
```

2. Sidekiq web UI
3. Sidekiq worker

