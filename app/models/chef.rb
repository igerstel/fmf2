class Chef < ActiveRecord::Base
  attr_accessible :name

  has_many :restaurants
  has_many :inventories, :through => :restaurants

  validates_associated :restaurants
  validates_associated :inventories
  validates :name, :length => { :minimum => 2 }, 
  				   :uniqueness => { :case_sensitive => false }
end
