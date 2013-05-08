class Payment < ActiveRecord::Base
  attr_accessible :amount
  belongs_to :payment_card
  # attr_accessible :title, :body

end
