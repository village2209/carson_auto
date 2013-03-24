class InvoiceLine < ActiveRecord::Base
  belongs_to :car
  belongs_to :invoice
  attr_accessible :price
end
