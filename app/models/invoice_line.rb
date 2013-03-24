# == Schema Information
#
# Table name: invoice_lines
#
#  id         :integer          not null, primary key
#  car_id     :integer
#  invoice_id :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class InvoiceLine < ActiveRecord::Base
  belongs_to :car
  belongs_to :invoice
  attr_accessible :price
end
