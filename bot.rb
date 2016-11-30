#!/usr/bin/env ruby
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "ypk3aBovLtfjCxzb5nam9EQWe"
  config.consumer_secret     = "zpybZ4szbDtChYAzCz7NcoXHAr7PS3T3murGdnFdMa8D81WXQn"
  config.access_token        = "1476842083-SoB0GbXvReo6RCGqQ7XXnRdlpS1jq0q6cuTCskI"
  config.access_token_secret = "BTd4Q7vK264x7IIhKLZJ4f18z69xEISP01QpGtiUrNWUF"
end

# client = Twitter::Streaming::Client.new do |config|
#   config.consumer_key        = "ypk3aBovLtfjCxzb5nam9EQWe"
#   config.consumer_secret     = "zpybZ4szbDtChYAzCz7NcoXHAr7PS3T3murGdnFdMa8D81WXQn"
#   config.access_token        = "1476842083-SoB0GbXvReo6RCGqQ7XXnRdlpS1jq0q6cuTCskI"
#   config.access_token_secret = "BTd4Q7vK264x7IIhKLZJ4f18z69xEISP01QpGtiUrNWUF"
# end

###################################
client.update('She took more than I did, I think women are stronger')
###################################
 client.search("#DeportBobCollymore").first(10).each do |tweet|
    users = "#{tweet.user.screen_name}:"," #{tweet.text}"
      puts users[0]
    end



################################################################
# search_options = {
#   result_type: "recent",
#   geocode: "39.9525839,-75.1652215,10mi"
# }
#
# client.search("#QuotesWithBensonGatu", search_options).take(50).each do |tweet|
#   puts "#{tweet.user.screen_name}: #{tweet.text}"
# end
##############################################################
# topics = ["coffee", "tea"]
# client.filter(:track => topics.join(",")) do |object|
#   puts object.text if object.is_a?(Twitter::Tweet)
# end
client.friends
