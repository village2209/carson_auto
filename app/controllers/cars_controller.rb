class CarsController < ApplicationController

	def index
		@cars = Car.paginate(page: params[:page], :per_page => 10 ,:conditions => params[:find], :order => 'year DESC')
	end

	def new
		@car = Car.new
	end

	def show
		@car = Car.find(:id)
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
