class WelcomeController < ApplicationController

	 
 
    def index
      @pins = Pin.all

      # client = Twitter::REST::Client.new do |config|
      # config.consumer_key        = "I9ikHMfYPqkGK8fkglKNACfNU"
      # config.consumer_secret     = "pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz"
      # config.access_token        = "445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u"
      # config.access_token_secret = "9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG" 
      # end
      #TweetStream::Client.new(:username => 'danigattoni_', :password => 'aznar2012')
      # TweetStream.configure do |config|
      # config.consumer_key       = 'I9ikHMfYPqkGK8fkglKNACfNU'
      # config.consumer_secret    = 'pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz'
      # config.oauth_token        = '445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u'
      # config.oauth_token_secret = '9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG'
      # config.auth_method        = :oauth
      # end
      #      TweetStream::Client.new('user','pass').track('fail') 
      #@jazztweets = TweetStream::Client.new.track('feedback')
      #@client = TweetStream::Client.new('danigattoni_','aznar2012')
      #  

   #  if params[:q]
      client = Twitter::REST::Client.new do |config|
      config.consumer_key       = 'I9ikHMfYPqkGK8fkglKNACfNU'
      config.consumer_secret    = 'pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz'
      config.oauth_token        = '445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u'
      config.oauth_token_secret = '9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG'
      end

     # topics = ["rock"]
     # @search = client.search(topics.join(","))
   
      @search = client.search :q => 'Pearl Jam', :count => 8
    
    #end def index
    end 




    # def client.get_all_tweets(user)


     # options = {:count => 8, :include_rts => true}
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
