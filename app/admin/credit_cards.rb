ActiveAdmin.register CreditCard do
  index do
  	column :card_type
  	column :card_number
  	column :card_security_code
  	column :user_id_number
  	column :holder_name
  	default_actions
  end



end
