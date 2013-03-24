class User < ActiveRecord::Base
	has_many :orders
	has_many :invoices
	belongs_to :ship_address
  attr_accessible :address, :cell_number, :country, :email, :name, :password, :surname
end
