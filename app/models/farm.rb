class Farm < ActiveRecord::Base
  attr_accessible :address, :farmer_id

  belongs_to :farmer
  has_many :produces
end




#INVENTORY TO LINK FARM AND PRODUCES?

#FARM HAS_MANY INVENTORY
#PRODUCE HAS_MANY INVENTORY



# from campfire:
#you just need to make sure to use Produce.find(123).
						#include(:farm).include(:farmer)
