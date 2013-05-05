class CardTypesController < ApplicationController
  def index
  end

  def new
    @card_type = CardType.new
  end

  def show
  end

  def create
    @card_type = CardType.new(params[:card_type])
    if @card_type.save
    flash[:success] = "Card information added!"
    redirect_to(current_user)
    else
    @feed_items = []
    render 'static_pages/home'
    end
  end

  def destroy
  end

  def edit
  end
end
