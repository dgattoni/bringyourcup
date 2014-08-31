class WelcomeController < ApplicationController

	 
 
    def index
      @pins = Pin.all
 
   

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
       username = 'danigattoni_'
       options = { :until=>'2014-08-24', :count => 10, :include_rts => 0, :exclude_replies => 1, :retweeted => 0, :result_type=> 'recent', :geo => 1 }
       @search = $client.user_timeline(username, options)
      


    #---EJEMPLO OK 5: -------------------------------------------------------------------------------




#---EJEMPO OK 6: --------------------------------------------------------------------------
     
      
       $mifoto = $client.user('danigattoni_').profile_image_url("normal")

#----------------------------------------------------------------------------------------------

  

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

    def buscar_tweets

    #$mifoto = $client.user('danigattoni_').profile_image_url("normal")
    topics =  "jazz"
     
     #lati =params[:lati]
     #longi=params[:longi]
     #millas=params[:millas]
     #coord = lati+","+longi+","+millas
     # coord ="-33,-70,1000mi"

        #@search = client.search(topics.join(","), :lang => "es", :geocode => "-33.4691199, -70.641997, 50km").take(5).collect
        #@search = client.search(topics.join(","), :locale => "cl" , :geocode => "-33,-70,100mi").take(5).collect
        #@search = $client.search(topic, :geocode => coord, :exclude_replies => 0, :result_type=>"recent").take(5).collect
   
          @search = $client.search(topics.join(","),:lang => "en", :exclude_replies => 0, :result_type=>"popular").take(5).collect
         

    end


    def nosotros
    end



    def fullscreen
    @pins = Pin.all  	 
    end

end
