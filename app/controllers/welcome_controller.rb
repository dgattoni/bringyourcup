class WelcomeController < ApplicationController

	 require 'tweetstream'


    def index
      @pins = Pin.all

      # client = Twitter::REST::Client.new do |config|
      # config.consumer_key        = "I9ikHMfYPqkGK8fkglKNACfNU"
      # config.consumer_secret     = "pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz"
      # config.access_token        = "445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u"
      # config.access_token_secret = "9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG" 
      # end

    TweetStream.configure do |config|
    config.consumer_key       = 'I9ikHMfYPqkGK8fkglKNACfNU'
    config.consumer_secret    = 'pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz'
    config.oauth_token        = '445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u'
    config.oauth_token_secret = '9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG'
    config.auth_method        = :oauth
    end

    
    client = TweetStream::Client.new

    client.on_error do |message|
    puts message
    end

    client.on_direct_message do |direct_message|
    puts direct_message.text
    end

    client.on_timeline_status  do |status|
    puts status.text
    end

    client.userstream




    #end def index
    end 




    # def client.get_all_tweets(user)


    #   options = {:count => 8, :include_rts => true}
    #   user_timeline(user, options)
    #   end


    #   @tweet_news = client.get_all_tweets("danigattoni_")

    # end




    def nosotros
    end



    def fullscreen
    @pins = Pin.all  	 
    end

end
