class Restaurant < ActiveRecord::Base
  attr_accessible :chef_id, :address, :bill

  belongs_to :chef
  has_many :inventories
end
