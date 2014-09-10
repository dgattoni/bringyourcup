class UsermapsController < ApplicationController

	def index

			@usermaps = Usermap.all
		    @hash = 

			      Gmaps4rails.build_markers(@usermaps) do |userm, marker|
			      marker.lat userm.latitude 
			      marker.lng userm.longitude
			      marker.infowindow userm.description
			      marker.title userm.title
			       
			    end

	end

end
