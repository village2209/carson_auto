class CardType < ActiveRecord::Base
  has_many :payments
  attr_accessible :description, :name, :valid
end
