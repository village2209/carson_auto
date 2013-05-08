ActiveAdmin.register User do
	index do
		column :name
		column :surname
		column :cell_number
		column :email
		column :country
		column :address
		default_actions
	end

	filter :name
	filter :surname
	filter :cell_number
	filter :email
	filter :country
	filter :address
	filter :created_at
	filter :updated_at
  
end
