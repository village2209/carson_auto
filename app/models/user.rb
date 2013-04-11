# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  surname     :string(255)
#  cell_number :string(255)
#  email       :string(255)
#  password    :string(255)
#  country     :string(255)
#  address     :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class User < ActiveRecord::Base
	has_many :orders
	has_many :invoices
	belongs_to :ship_address
	has_secure_password

  	attr_accessible :address, :cell_number, :country, :email, :name, :password, :surname, :password_confirmation

  	before_save { |user| user.email = email.downcase }

  	validates :name, presence: true, length: {maximum: 50}
  	validates :surname, presence: true, length: {maximum: 50}
  	validates :password, presence: true, length: { minimum: 6 }
  	validates :password_confirmation, presence: true
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  	uniqueness: {case_sensitive: false}
end
