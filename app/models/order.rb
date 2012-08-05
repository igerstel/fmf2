class Order < ActiveRecord::Base
  attr_accessible :cost, :qty, :restaurant_id
  
    has_many :produces, :through => :order_items
end
