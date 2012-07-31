class Produce < ActiveRecord::Base
  attr_accessible :amount, :bundle, :category, :cost, :farm_id, :name

  belongs_to :farm
end