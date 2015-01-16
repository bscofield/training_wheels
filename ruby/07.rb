#!/usr/bin/env ruby

require 'sinatra'
require 'redis'
require 'json'

set :port, 3000
set :bind, '0.0.0.0'

redis = Redis.new

get '/' do
  events = redis.zrange 'github-events', 0, -1
  events.map {|e| JSON.parse(e).inspect }.join("<br>")
end
