class Image < ActiveRecord::Base
  belongs_to :car
  attr_accessible :image_desc, :image_file
end
