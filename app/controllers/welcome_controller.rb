class WelcomeController < ApplicationController

	 


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

    EM.run do

    client = TweetStream::Client.new

    client.on_error do |error|
    puts error
    end

    client.sitestream([445571280], :followings => true) do |status|
    puts status.inspect
    end

    EM::Timer.new(60) do
    client.control.add_user(user_id_to_add)
    client.control.info { |i| puts i.inspect }
    end

    EM::Timer.new(75) do
    client.control.friends_ids(user_id) do |friends|
    puts friends.inspect
    end
    end

    EM::Timer.new(90) do
    client.control.remove_user(user_id_to_remove)
    client.control.info { |i| puts i.inspect }
    end

    end




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
