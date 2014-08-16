class Pin < ActiveRecord::Base

	#un pin pertenece a 1 user
	belongs_to :user
	#un pin pertenece a 1 categoria
	belongs_to :categoria
end
