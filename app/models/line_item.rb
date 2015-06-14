class LineItem < ActiveRecord::Base
	# Association
	belongs_to :cart
	belongs_to :product
	belongs_to :order

	# Custome method
	def total_price
		product.price * quantity
	end
end
