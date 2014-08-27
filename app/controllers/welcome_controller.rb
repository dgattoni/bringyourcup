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
        config.consumer_key        = "I9ikHMfYPqkGK8fkglKNACfNU"
        config.consumer_secret     = "pQQ7rCkMin7GvQdsaFvPtahthIjdiUwQpIkx5miZmh0wJU1Uzz"
        config.access_token        = "445571280-j2m2vwaOb4mDb1qBXUvmT6oqlh0Topiixh6vfX3u"
        config.access_token_secret = "9w5GsOzAitaDl13KGFFFvu7oLmT1xQpJpEAALFzDWdmbG" 
      end

      #----------------------------------------------------------------------------------
        #EJEMPLO OK 1:
            #@search = client.search("#DondeGuido -rt", :lang => "es").take(3).collect
        #-----------------------------------------------------------------------------
     
    #---EJEMPLO OK 2: -------------------------------------------------------------------------------
        #username = 'danigattoni_'
        #options = {:count => 3, :include_rts => true}
        #@search = client.user_timeline(username, options)
    #---EJEMPLO OK 2: -------------------------------------------------------------------------------


 #---EJEMPLO OK 3: -------------------------------------------------------------------------------
      #username = 'meligatt'
      #options = {:count => 3, :include_rts => true}
      #@search = client.user_timeline(username, options)
    #---EJEMPLO OK 3: -------------------------------------------------------------------------------



    #---EJEMPLO OK 4: -------------------------------------------------------------------------------
      #topics = ["#TodalaRed","#AlertaMetro"]
     # @search = client.search(topics.join(","), :include_rts => false).take(3).collect

  #---EJEMPLO OK 5: -------------------------------------------------------------------------------
       #username = 'metrodesantiago'
       #options = {:count => 3, :include_rts => false, :exclude_replies => true}
      # @search = client.user_timeline(username, options)
    #---EJEMPLO OK 5: -------------------------------------------------------------------------------



#---EJEMPO OK 6: ----------------------------------

   
      topics = [params[:q]]
     # @search = client.search(topics.join(","), :lang => "es", :geocode => "-33.4691199, -70.641997, 50km").take(5).collect
      
     # @search = client.search(topics.join(","), :locale => "cl" , :geocode => "-33,-70,100mi").take(5).collect
      
      @search = client.search(topics.join(","), :geocode => "-33,-70,5mi").take(5).collect

#--------------------------------------------

     # topics = ["rock"]
      #client.search("#ruby -rt", :lang => "ja").first.text 


      

      #client.search("to:justinbieber marry me", :result_type => "recent").take(3).each do |tweet|
      

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
