module CartsHelper
	def cart
		@cart = Cart.find_by_user_id(current_user)
		rescue ActiveRecord::RecordNotFound
	end

	def cart?
		!cart.nil?		
	end

	def current_cart
		@current_cart = Cart.find_by_user_id(current_user)		
		rescue ActiveRecord::RecordNotFound
	end

	def current_cart=(cart)
		@current_cart = cart
	end

	def current_cart?(cart)
		cart == current_cart
	end
end
