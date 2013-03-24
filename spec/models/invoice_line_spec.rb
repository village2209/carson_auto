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

require 'spec_helper'

describe InvoiceLine do
  pending "add some examples to (or delete) #{__FILE__}"
end
