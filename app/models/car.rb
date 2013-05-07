# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  make         :string(255)
#  price        :decimal(, )
#  image        :string(255)
#  model        :string(255)
#  year         :integer
#  mileage      :string(255)
#  color        :string(255)
#  transmission :string(255)
#  fuel_type    :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Car < ActiveRecord::Base
  attr_accessible :color, :fuel_type, :image, :make, :mileage, :model, :price, :transmission, :year
  mount_uploader :image, ImageUploader
end
