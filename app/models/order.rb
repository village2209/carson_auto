class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :payment
  belongs_to :invoice
  attr_accessible :card_number
end
