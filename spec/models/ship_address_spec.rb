# == Schema Information
#
# Table name: ship_addresses
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  country    :string(255)
#  region     :string(255)
#  address    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe ShipAddress do
  pending "add some examples to (or delete) #{__FILE__}"
end
