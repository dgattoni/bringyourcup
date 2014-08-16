class WelcomeController < ApplicationController

	 


  def index
  	 @pins = Pin.all

  

    client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "I9ikHMfYPqkGK8fkglKNACfNU"
    config.consumer_secret     = "pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz"
    config.access_token        = "445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u"
    config.access_token_secret = "9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG" 

    end

    def client.get_all_tweets(user)
    options = {:count => 8, :include_rts => true}
    user_timeline(user, options)
    end

    @tweet_news = client.get_all_tweets("danigattoni_")


    @tweet_blues = client.search("to:danigattoni_ blues", :result_type => "recent").take(3).collect do |tweet|
    "#{tweet.user.screen_name}: #{tweet.text}"
    end

  end


  def nosotros
  end

  def fullscreen
  	 @pins = Pin.all
  	 
  end

end
