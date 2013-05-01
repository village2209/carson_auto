class ShipAddressesController < ApplicationController

	def index
		@ship_address = ship_addresses.find(current_user)		
	end

	def new
		@ship_address = ShipAddress.new
	end

	def show
		@ship_address = current_user.ship_addresses.find_by_id(params[:id])
				
	end

	def create
		@ship_address = current_user.ship_addresses.build(params[:ship_address])
		if @ship_address.save
		flash[:success] = "Address added!"
		redirect_to(current_user)
		else
		@feed_items = []
		render 'static_pages/home'
		end
	end

	def edit
		@ship_address = ShipAddress.find(current_user)
	end

	def update
		@ship_address = ShipAddress.find(current_user)
	    if @ship_address.update_attributes(params[:ship_address])
	      flash[:success] = "Profile updated"
	      redirect_to(current_user)
	      
	    else
	      render 'edit'
	    end		
		
	end

	def destroy
		ShipAddress.find(params[:id]).destroy
		redirect_to(current_user)
	end
end
