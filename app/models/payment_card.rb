class PaymentCard < ActiveRecord::Base
  belongs_to :user
  has_many :payments
  
  attr_accessible :card_number, :card_security_code, :card_type, :holder_name, :user_id_number
end
