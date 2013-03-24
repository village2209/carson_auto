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

class ShipAddress < ActiveRecord::Base
  belongs_to :user
  has_many :invoices
  attr_accessible :address, :country, :region
end
