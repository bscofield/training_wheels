#!/usr/bin/env ruby

require 'httparty'

class GitHubber
  def self.events
    stream = HTTParty.get 'https://api.github.com/events'
    stream[0,10].map do |event|
      {
        id: event['id'],
        created: event['created_at'],
        repo: event['repo']['name'],
        author: event['actor']['login'],
        commits: event['payload'].count
      }
    end
  end
end

if __FILE__ == $0
  puts GitHubber.events.map(&:inspect).join("\n")
end
