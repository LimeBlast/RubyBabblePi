require 'rubygems'
require 'bundler/setup'

require 'dotenv'
require 'twitter'
Dotenv.load

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["ACCESS_SECRET"]
end

# San Fran
#client.filter(locations: "-122.75,36.8,-121.75,37.8") do |tweet|
#  puts tweet.text
#end

client.user do |object|
  case object
  when Twitter::Tweet
    puts object.in_reply_to_screen_name
    puts object.in_reply_to_screen_name?
    puts object.user_mentions
    puts object.user_mentions?
  end
end
