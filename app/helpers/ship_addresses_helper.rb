module ShipAddressesHelper
	def ship_address
		@ship_address = ShipAddress.find_by_user_id(current_user)
		rescue ActiveRecord::RecordNotFound
	end

	def ship_address?
		!@ship_address.nil?
	end
end
