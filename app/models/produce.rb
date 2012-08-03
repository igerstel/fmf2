class Produce < ActiveRecord::Base
  attr_accessible :amount, :bundle, :category, :cost, :farm_id, :name

  belongs_to :farm

#  def producefarmer
#    return @produces.farm.farmer.name
#  end

#"delegate :farmer_name, :to => :farmer" in your produce model

end