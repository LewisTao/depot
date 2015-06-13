class LineItem < ActiveRecord::Base
	# Association
	belongs_to :cart
	belongs_to :product

	# Custome method
	def total_price
		product.price * quantity
	end
end
