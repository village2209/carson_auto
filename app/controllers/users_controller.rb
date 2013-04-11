class UsersController < ApplicationController
	

	def show
		@user = User.find(params[:id])		
	end

	def new
		@user = User.new		
	end

	def create
		@user = User.new(params[:user])
		
		if @user.save
			sign_in @user
			redirect_to(root_path)
			flash[:success] = "Welcome to Carson App"
		else
			render 'new'
		end
	end
end
