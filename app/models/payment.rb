class Payment < ActiveRecord::Base
  belongs_to :credit_card
  attr_accessible :amount
end
