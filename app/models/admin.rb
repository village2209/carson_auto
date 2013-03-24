class Admin < ActiveRecord::Base
	has_many :cars
  attr_accessible :email, :name, :password, :surname
end
