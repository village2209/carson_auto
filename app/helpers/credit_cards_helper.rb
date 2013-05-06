module CreditCardsHelper

	def credit_card
		@credit_card = CreditCard.find_by_user_id(current_user)
		rescue ActiveRecord::RecordNotFound
		
	end

	def credit_card?
		!@credit_card.nil?
		
	end
end