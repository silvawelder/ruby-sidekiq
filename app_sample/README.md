
```
bundle exec sidekiq -r ./worker.rb
```
```
bundle exec irb -r ./worker.rb
```
```
WorkerTest.perform_async("easy")
WorkerTest.perform_async("hard")
WorkerTest.perform_async("super_hard")
```
