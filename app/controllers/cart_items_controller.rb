class CartItemsController < ApplicationController
	
	def index
		
	end

	def create
		@cart_item = current_cart.cart_items.create(params[:product])

		if @cart_item.save
			redirect_to(:back)
		else
			render 'static_pages/home'
		end
	end

	def destroy
		CartItem.find(params[:id]).destroy
		redirect_to(:back)
	end

end
