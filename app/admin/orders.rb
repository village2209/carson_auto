ActiveAdmin.register Order do
  
  index do
  	column :user_id
  	column :card_number 
  	column :created_at

  	default_actions
  end
end
