class Produce < ActiveRecord::Base
  attr_accessible :amount, :bundle, :category, :cost, :name, :farm_id

  belongs_to :farm

  validates :amount, :numericality => { :only_integer => true,
  									 	:greater_than_or_equal_to => 0 }
  validates :bundle, :inclusion => { :in => %w(ea bushel lb),
    	:message => "%{value} is not a valid group" }
  validates :category, :inclusion => { :in => %w(fruits vegetables livestock pumpkins),
    	:message => "%{value} is not a valid category" }
  validates :cost, :numericality => { :greater_than => 0 }
  validates :name, :length => { :minimum => 2 }


 def farmername
   return farm.farmer.name
 end

end
