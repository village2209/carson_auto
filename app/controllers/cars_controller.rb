class CarsController < ApplicationController

	def new
		@car = Car.new
	end

	def show
		@car = Car.find(params[:id])
	end

	def create
		@car =Car.new(params[:car])

		if @car.save
			#show successful save
			flash[:success] = "Successfully added a car"
			redirect_to @car
		else
			render 'new'
		end
	end
end