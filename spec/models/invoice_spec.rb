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

require 'spec_helper'

describe Invoice do
  pending "add some examples to (or delete) #{__FILE__}"
end
