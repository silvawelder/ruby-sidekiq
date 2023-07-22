

bundle exec sidekiq -r ./worker.rb

bundle exec irb -r ./worker.rb


WorkerTest.perform_async("easy")