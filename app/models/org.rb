class Org < ActiveRecord::Base
  has_many :events
  has_many :people
end
