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

require 'spec_helper'

describe Car do
  pending "add some examples to (or delete) #{__FILE__}"
end
