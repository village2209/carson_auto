module ShipAddressesHelper
	def ship_address
		@ship_address = current_user.ship_addresses.find_by_id(params[:id])
		rescue ActiveRecord::RecordNotFound
		
	end

	def ship_address?
		!@ship_address.nil?
	end
end
