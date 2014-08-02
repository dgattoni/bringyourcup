class WelcomeController < ApplicationController
  def index
  	 @pins = Pin.all

  end
  def nosotros
  end

  def fullscreen
  	 @pins = Pin.all
  	 
  end

end
