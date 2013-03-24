class Car < ActiveRecord::Base
  belongs_to :admin
  belongs_to :invoice_line
  attr_accessible :color, :fueltype, :image_desc, :image_file, :make, :mileage, :model, :price, :transmission, :year
end
