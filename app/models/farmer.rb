class Farmer < ActiveRecord::Base
  attr_accessible :name

  has_many :farms
  has_many :produces, :through => :farms
end
