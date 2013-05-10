ActiveAdmin.register Invoice do
  
  index do
  	column :invoice_total
  	column :created_at
  end

end
