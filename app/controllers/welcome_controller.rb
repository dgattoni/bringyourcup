class WelcomeController < ApplicationController

	 
 
    def index
      @pins = Pin.all
 
  
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
       username = 'danigattoni_'
       options = {:count => 6, :include_rts => false, :exclude_replies => true}
       @search = client.user_timeline(username, options)
    #---EJEMPLO OK 5: -------------------------------------------------------------------------------



#---EJEMPO OK 6: ----------------------------------
     


       
     # topics = [params[:q]]


     # lati =params[:lati]+","
     # longi=params[:longi]+","
     # millas=params[:millas]
     # coord = lati+longi+millas
      #coord ="-33,-70,1000mi"

      #"-33,-70,100mi"
      
     # @search = client.search(topics.join(","), :lang => "es", :geocode => "-33.4691199, -70.641997, 50km").take(5).collect
      
     # @search = client.search(topics.join(","), :locale => "cl" , :geocode => "-33,-70,100mi").take(5).collect
      
      #@search = client.search(topics.join(","), :geocode => coord, :exclude_replies => false).take(5).collect



          #<% if params[:q]  %>
          # <form>
          #    Ingresa una palabra clave para buscar:

          #    <span style="color:purple">Tema: </span><input name="q"><br>
          #    <span style="color:red">Latitud: (ej: -33) </span><input name="lati"> <br>
          #    <span style="color:orange">Longitud: (ej: -70) </span><input name="longi"><br>
          #    <span style="color:green">Millas a la redonda: (ej: 100mi)</span><input name="millas"> <br>

          #    <input type="submit">
          #    </form>
          #
          #               <p>Topico buscado:  <strong><%= params[:q]  %> </strong></p>
          #              <% @search.each do |s|%>
          #             <p> <%= s.text %></p>
          #            <% end %>

          #   <% end %>


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
