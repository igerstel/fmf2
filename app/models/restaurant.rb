class Restaurant < ActiveRecord::Base
  attr_accessible :address, :chef_id#, :bill

  belongs_to :chef
  has_many :inventories

  validates_associated :inventories
  validates :address, :length => { :minimum => 2 },
  					  :uniqueness => { :case_sensitive => false }
  #validates :bill, :numericality => true
end
