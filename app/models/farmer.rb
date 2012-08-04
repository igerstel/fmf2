class Farmer < ActiveRecord::Base
  attr_accessible :name

  has_many :farms
  has_many :produces, :through => :farms

  validates_associated :produces
  validates :name, :length => { :minimum => 2 },
 				   :uniqueness => { :case_sensitive => false }
end
