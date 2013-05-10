# == Schema Information
#
# Table name: invoices
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  order_id        :integer
#  ship_address_id :integer
#  invoice_total   :decimal(, )
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Invoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  belongs_to :ship_address
  has_many :invoice_lines
  has_many :ordes
  
  attr_accessible :invoice_line, :invoice_total
end
