#!/usr/bin/env ruby

require 'redis'
require 'json'
require './04'

class Persister
  def self.save(events)
    redis = Redis.new
    events.each do |event|
      redis.zadd 'github-events', event[:id], event.to_json
    end

    redis.zcard 'github-events'
  end
end

if __FILE__ == $0
  puts Persister.save(GitHubber.events)
end
