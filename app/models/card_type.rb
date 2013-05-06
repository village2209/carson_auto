# == Schema Information
#
# Table name: card_types
#
#  id          :integer          not null, primary key
#  payment_id  :integer
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  card_number :string(255)
#

class CardType < ActiveRecord::Base
  belongs_to :user
  belongs_to :payment
  attr_accessible :card_number, :card_type, :holder_name, :security_code, :user_id_number
end
