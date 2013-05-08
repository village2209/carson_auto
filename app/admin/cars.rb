ActiveAdmin.register Car do

	index do
		column :make 
		column :price, :sortable => :price do |product|
			div :class => "price" do
				number_to_currency product.price, :unit => "R"
			end
		end
		column :model 
		column :year
		column :mileage
		column :color
		column :transmission
		column :fuel_type
		default_actions
	end

	
end
