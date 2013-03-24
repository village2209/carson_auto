# == Schema Information
#
# Table name: admins
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  surname    :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Admin < ActiveRecord::Base
	has_many :cars
  attr_accessible :email, :name, :password, :surname
end
