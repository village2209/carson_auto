class PaymentCardsController < ApplicationController
	 def new
  	@payment_card = PaymentCard.new
  end

  def create
  	@payment_card = current_user.payment_cards.build(params[:credit_card])
  	if @payment_card.save
		flash[:success] = "Credit card added!"
		redirect_to(current_user)
		else
		render 'static_pages/home'
		end
  end

  def destroy
  	PaymentCard.find(params[:id]).destroy
  	redirect_to(current_user)

  end

  def edit
  	@payment_card = PaymentCard.find_by_user_id(current_user) 
  end

  def update
  	@payment_card = PaymentCard.find_by_user_id(current_user)
  	if @payment_card.update_attributes(params[:payment_card])
  		flash[:success] = "Credit card information updated"
  		redirect_to(current_user)
  	else
  		render 'edit'
  	end
  end

  def show


  end
end
