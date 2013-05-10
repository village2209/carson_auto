# == Schema Information
#
# Table name: payments
#
#  id              :integer          not null, primary key
#  payment_card_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Payment < ActiveRecord::Base
  attr_accessible :amount
  belongs_to :payment_card
  has_many :orders
  has_many :invoices
  # attr_accessible :title, :body

end
