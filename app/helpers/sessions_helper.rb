module SessionsHelper

	def sign_in_(user)
		cookies.permanent[:remember_token] = user.remember_token
		self.current_user = user
		@cart = current_user.build_cart(params[:cart])
		@cart.save
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def current_user?(user)
		user == current_user
	end


	def sign_out_
		self.current_user = nil
		cookies.delete(:remember_token)
	end

end
