ActiveAdmin.register ShipAddress do
	index do
		column :country
		column :region
		column :address
		default_actions
	end
  
end
