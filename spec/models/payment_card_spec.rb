# == Schema Information
#
# Table name: payment_cards
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

require 'spec_helper'

describe PaymentCard do
  pending "add some examples to (or delete) #{__FILE__}"
end
