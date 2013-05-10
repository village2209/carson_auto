class OrdersController < ApplicationController

	def create
		@order = current_user.orders.build(params[:order])
		@invoice = current_user.invoices.build(params[:invoice])
		@invoice_line

		if @order.save
			if @invoice.save
			flash[:success] = "Your order has been created, please complete the order process by paying"
			redirect_to(:back)
			end
		else
			flash[:error] = "Your order could not be completed"
		end
	end

	def show
		@order = current_user.orders.all
	end

	private

end
