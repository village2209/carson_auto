class CreditCardsController < ApplicationController
  def new
  	@credit_card = CreditCard.new
  end

  def create
  	@credit_card = current_user.credit_cards.build(params[:credit_card])
  	if @credit_card.save
		flash[:success] = "Credit card added!"
		redirect_to(current_user)
		else
		render 'static_pages/home'
		end
  end

  def destroy
  	CreditCard.find(params[:id]).destroy
  	redirect_to(current_user)

  end

  def edit
  	@credit_card = CreditCard.find_by_user_id(current_user) 
  end

  def update
  	@credit_card = CreditCard.find_by_user_id(current_user)
  	if @credit_card.update_attributes(params[:credit_card])
  		flash[:success] = "Credit card information updated"
  		redirect_to(current_user)
  	else
  		render 'edit'
  	end
  end

  def show


  end

end
