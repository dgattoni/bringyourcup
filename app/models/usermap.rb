class Usermap < ActiveRecord::Base

#la variable geocode_by captura el atributo address del  model 
 geocoded_by :address 
 after_validation :geocode
end
