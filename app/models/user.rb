# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  surname         :string(255)
#  cell_number     :string(255)
#  email           :string(255)
#  password        :string(255)
#  country         :string(255)
#  address         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#  remember_token  :string(255)
#

class User < ActiveRecord::Base
	has_many :orders
	has_many :invoices
  has_one :cart
	has_many :payment_cards

  has_many :ship_addresses, dependent: :destroy

  attr_accessible :address, :cell_number, :country, :email, :name, :password, :surname, :password_confirmation

  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  	

  	before_save { |user| user.email = email.downcase }

  	validates :name, presence: true, length: {maximum: 50}
  	validates :surname, presence: true, length: {maximum: 50}
  	validates :password, presence: true, length: { minimum: 6 }, :on => :create
  	validates :password_confirmation, presence: true, :on => :create
  	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  	uniqueness: {case_sensitive: false}
  
  private
    def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
    end
    
end
