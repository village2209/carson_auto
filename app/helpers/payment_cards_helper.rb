module PaymentCardsHelper
	def credit_card
		@payment_card = PaymentCard.find_by_user_id(current_user)
		rescue ActiveRecord::RecordNotFound
		
	end

	def credit_card?
		!@payment_card.nil?
		
	end

end
