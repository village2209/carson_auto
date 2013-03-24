class Payment < ActiveRecord::Base
  belongs_to :card_type
  belongs_to :order
  attr_accessible :card_number
end
