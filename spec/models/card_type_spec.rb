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

require 'spec_helper'

describe CardType do
  pending "add some examples to (or delete) #{__FILE__}"
end
