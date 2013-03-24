# == Schema Information
#
# Table name: payments
#
#  id           :integer          not null, primary key
#  card_type_id :integer
#  card_number  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

 class Payment < ActiveRecord::Base
  belongs_to :card_type
  belongs_to :order
  attr_accessible :card_number
end
