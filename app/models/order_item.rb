class OrderItem < ActiveRecord::Base
  attr_accessible :order_id, :produce_id
  
  belongs_to :order
  belongs_to :produce
end
