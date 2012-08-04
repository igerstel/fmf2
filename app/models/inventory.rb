class Inventory < ActiveRecord::Base
  attr_accessible :qty, :restaurant_id#, :cost

  belongs_to :restaurant

  validates :qty, :numericality => { :only_integer => true,
  								 	 :greater_than_or_equal_to(0) => true }
end
