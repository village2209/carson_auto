class SessionsController < ApplicationController

	def new
		
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in_ user
			redirect_to(root_path)
			flash[:success] = 'You have been succesfully signed in'
		else
			flash.now[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
	end

	def destroy
		sign_out_
		redirect_to root_url
	end
end
