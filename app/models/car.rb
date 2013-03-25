# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  admin_id     :integer
#  make         :string(255)
#  price        :decimal(, )
#  image_desc   :string(255)
#  image_file   :binary
#  model        :string(255)
#  year         :integer
#  mileage      :integer
#  color        :string(255)
#  transmission :string(255)
#  fueltype     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Car < ActiveRecord::Base
  belongs_to :admin
  belongs_to :invoice_line
  has_many :images
  attr_accessible :color, :fueltype, :image_desc, :image_file, :make, :mileage, :model, :price, :transmission, :year
end
