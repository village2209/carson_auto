class CartsController < ApplicationController
	def create
		@cart = Cart.find_by_user_id(current_user)
		rescue ActiveRecord::RecordNotFound
			
		if @cart.nil?
			@cart = current_user.build_cart(params[:cart])
			if @cart.save
			redirect_to(:back)
			else
			render 'static_pages/home'
			end
		else
			redirect_to(:back)		
		end
	end

end
