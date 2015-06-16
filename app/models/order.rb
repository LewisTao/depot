class Order < ActiveRecord::Base
	# Validates
	validates_presence_of :name, :email, :address, :pay_type

	# Association
	has_many :line_items, dependent: :destroy

	# Custome method
	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end
end
