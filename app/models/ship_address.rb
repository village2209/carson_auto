class ShipAddress < ActiveRecord::Base
  belongs_to :user
  has_many :invoices
  attr_accessible :address, :country, :region
end
