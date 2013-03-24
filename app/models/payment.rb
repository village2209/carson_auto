class Payment < ActiveRecord::Base
  belongs_to :card_type
  attr_accessible :card_number
end
