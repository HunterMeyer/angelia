$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
  config.consumer_secret     = ENV['TWITTER_CONSUMER_SEC']
  config.access_token        = ENV['TWITTER_ACCESS_TOK']
  config.access_token_secret = ENV['TWITTER_ACCESS_SEC']
end
