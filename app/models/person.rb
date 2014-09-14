class Person < ActiveRecord::Base
  belongs_to :org
  has_many :cups
end
