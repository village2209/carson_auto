class UsersController < ApplicationController
	
	def index
		
	end
	
	def show
		@user = User.find(params[:id])		
	end

	def new
		@user = User.new		
	end

	def create
		@user = User.new(params[:user])
		
		if @user.save
			UserMailer.registration_confirmation(@user).deliver
			sign_in @user
			redirect_to(root_path)
			flash[:success] = "Welcome to Carson App"
		else
			render 'new'
		end
	end

	def edit
		@user = User.find(params[:id])		
	end

	def update
		@user = User.find(params[:id])
	    if @user.update_attributes(params[:user])
	      flash[:success] = "Profile updated"
	      sign_in @user
	      redirect_to @user
	    else
	      render 'edit'
	    end		
	end
end
