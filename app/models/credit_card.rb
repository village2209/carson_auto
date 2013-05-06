# == Schema Information
#
# Table name: credit_cards
#
#  id                 :integer          not null, primary key
#  user_id            :integer
#  card_type          :string(255)
#  card_number        :string(255)
#  card_security_code :string(255)
#  user_id_number     :string(255)
#  holder_name        :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class CreditCard < ActiveRecord::Base
  belongs_to :user
  attr_accessible :card_number, :card_security_code, :card_type, :holder_name, :user_id_number
end
