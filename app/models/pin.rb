class Pin < ActiveRecord::Base

	#un pin pertenece a 1 user
	belongs_to :user
end
