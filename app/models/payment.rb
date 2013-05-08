class Payment < ActiveRecord::Base
  belongs_to :payment_card
  # attr_accessible :title, :body
end
