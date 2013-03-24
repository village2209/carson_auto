class Invoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :order
  belongs_to :ship_address
  has_many :invoice_lines
  
  attr_accessible :invoice_line, :invoice_total
end
