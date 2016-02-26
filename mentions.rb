require 'rubygems'
require 'bundler/setup'

require 'dotenv'
require 'twitter'
Dotenv.load

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["ACCESS_SECRET"]
end

client.mentions.each do |tweet|
  puts "#{tweet.text} (@#{tweet.user.screen_name})"
end