class Chef < ActiveRecord::Base
  attr_accessible :name

  has_many :restaurants
  has_many :orders, :through => :restaurants

  validates_associated :restaurants
  validates_associated :orders
  validates :name, :length => { :minimum => 2 }, 
  				   :uniqueness => { :case_sensitive => false }
end
