# == Schema Information
#
# Table name: card_types
#
#  id          :integer          not null, primary key
#  payment_id  :integer
#  name        :string(255)
#  description :string(255)
#  valid       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CardType < ActiveRecord::Base
  has_many :payments
  attr_accessible :description, :name, :valid
end
