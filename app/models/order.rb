# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  payment_id  :integer
#  card_number :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  invoice_id  :integer
#

class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :payment
  belongs_to :invoice
  
  attr_accessible :card_number
end
