
## Run the commands bellow to put workloads on worker
```
bundle exec irb -r ./worker.rb
```
```
WorkerTest.perform_async("easy")
WorkerTest.perform_async("hard")
WorkerTest.perform_async("super_hard")
```
