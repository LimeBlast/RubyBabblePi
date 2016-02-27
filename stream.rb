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

client.user do |object|
  case object
  when Twitter::Tweet
    tweet = object
    if tweet.user_mentions?
      tweet.user_mentions.each do |mention|
        if mention.screen_name == 'BabblePi'
          puts tweet.text
          text = tweet.text.gsub("'"){"\\'"}
          puts text
          system <<TWEET
sudo ./scroller.py '#{text}'
TWEET
        end
      end
    end
  end
end
