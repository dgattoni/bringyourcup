class WelcomeController < ApplicationController

	 
 
    def index
     # @pins = Pin.all
 
   

    #----------------------------------------------------------------------------------
        #EJEMPLO OK 1:
             #@search = $client.search("#hack4good  -rt", :lang => "es").take(3).collect

             # @search = $client.search("#hack4good -rt", :lang => "es").take(3).collect

              # Recurso oficial: https://dev.twitter.com/docs/api/1.1/get/geo/search
              # lat, long, ip, or query
              # lat
              # long
              # query
              # granularity 
              # accuracy 


      #@search = $client.search("#ecotestimonio",:count=>6,:geocode=>"-33.4691199,-70.641997,150km").take(6).collect
      #@search = $client.search("cerveza", :lang => "es", :geocode=>"-33,-70,150km").take(3).collect
      #@search = $client.search("#hack4good", :lang => "es", :geocode=>"-34.6037232,-58.38159310000003,150km", :until=>'2014-08-1').take(3).collect
      #@search = $client.search("#hack4good -rt", :lang => "es", :geocode=>"-31.3989296,-64.18212890000001,150km").take(3).collect
     # @search = $client.search("#ecotestimonio",:lang => "es",:geocode=>"-33,-70,200km").take(3).collect
      @search = $client.search("#ecotestimonio",:lang => "es").take(6).collect

        #-----------------------------------------------------------------------------
     
    #---EJEMPLO OK 2: -------------------------------------------------------------------------------
        # username = 'danigattoni_'
         #options = {:count => 3, :include_rts => true}
         #@search = $client.user_timeline(username, options)
    #---EJEMPLO OK 2: -------------------------------------------------------------------------------


 #---EJEMPLO OK 3: -------------------------------------------------------------------------------
      #username = 'meligatt'
      #options = {:count => 3, :include_rts => true}
      #@search = client.user_timeline(username, options)
    #---EJEMPLO OK 3: -------------------------------------------------------------------------------



    #---EJEMPLO OK 4: -------------------------------------------------------------------------------
     # topics = ["hack4good -rt","hack4goodsantiago -rt"]
     # @search = $client.search(topics.join(","), :include_rts => false).take(3).collect


  #---EJEMPLO OK 5: -------------------------------------------------------------------------------
    #username = 'danigattoni_'
    #options = { :until=>'2014-08-24', :count => 10, :include_rts => 0, :exclude_replies => 1, :retweeted => 0, :result_type=> 'recent', :geo => 1 }
    #@search = $client.user_timeline(username, options)
      


    #---EJEMPLO OK 5: -------------------------------------------------------------------------------




#---EJEMPO OK 6: --------------------------------------------------------------------------
     
      
       # $mifoto = $client.user('danigattoni_').profile_image_url("normal")

#--------EJEMPLO 7--------------------------------------------------------------------------------------

  

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
      #topics =  "emprendimiento"

      #lati =params[:lati]
      #longi=params[:longi]
      #millas=params[:millas]
      #coord = lati+","+longi+","+millas
      # coord ="-33,-70,1000mi"

      #@search = client.search(topics.join(","), :lang => "es", :geocode => "-33.4691199, -70.641997, 50km").take(5).collect
      #@search = client.search(topics.join(","), :locale => "cl" , :geocode => "-33,-70,100mi").take(5).collect
      #@search = $client.search(topic, :geocode => coord, :exclude_replies => 0, :result_type=>"recent").take(5).collect

      #@busca = $client.search(topics.join(","), :count=>5, :lang => "en", :exclude_replies => 0, :result_type=>"popular")

     # @busca = $client.search(topics.join(","))
     #      topics = ["brmc"]


           if request.GET.include? "q"
          
            topics =[params[:q]]

            si viene parametro igual a vacio
            if params[:idioma] ==""
               idioma="en"
            end

            @search  = $client.search(topics.join(","), :locale=>idioma, :include_entities =>0, :result_type => "recent", :include_rts => 0,:exclude_replies => 0,:lang=>idioma,:count=>5).take(5).collect

      
      end


  

      

    end


    def nosotros
    end



    def fullscreen
    @pins = Pin.all  	 
    end

end
