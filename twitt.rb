require 'twitter'
require './configure'

screen_name = ARGV[0] || '@danigattoni_'
a_user = Twitter.user(screen_name)

puts <<"EOS"
Username   :  {a_user.screen_name}
Name       :  {a_user.name}
Followers  :  {a_user.followers_count}
Friends    :  {a_user.friends_count}
Location   :  {a_user.location}
URL        :  {a_user.url ? a_user.url : ""} 
Verified   :  {a_user.verified}
EOS

tweet = Twitter.user_timeline(screen_name).first

if tweet
  puts "Tweet text : #{tweet.text }"
  puts "Tweet time : #{tweet.created_at}"
  puts "Tweet ID   : #{tweet.id}"
end
