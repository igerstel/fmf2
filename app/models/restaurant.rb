class Restaurant < ActiveRecord::Base
  attr_accessible :address, :zip, :chef_id#, :bill

  belongs_to :chef
  has_many :orders

  validates_associated :orders
  validates :address, :length => { :minimum => 2 },
  					  :uniqueness => { :case_sensitive => false }
  #validates :bill, :numericality => true
end
