class Chef < ActiveRecord::Base
  attr_accessible :name

  has_many :restaurants
  has_many :inventories, :through => :restaurants
end
