require 'sidekiq'

Sidekiq.configure_client do |config|
    config.redis = { url: ENV['REDIS_URL'], password: ENV['REDIS_PASS'] }
end

Sidekiq.configure_server do |config|
    config.redis = { url: ENV['REDIS_URL'], password: ENV['REDIS_PASS'] }
end

class WorkerTest
  include Sidekiq::Worker  
  def perform(complexity)
    case complexity
    when "super_hard"
      sleep 20
      puts "Really took a quite a bit of effort"
    when "hard"
      sleep 10
      puts "That was a bit of work"
    else
      sleep 1
      puts "That wasn't a lot of effort"
    end
  end
end