class Inventory < ActiveRecord::Base
  attr_accessible :cost, :qty, :restaurant_id

  belongs_to :restaurant
end
