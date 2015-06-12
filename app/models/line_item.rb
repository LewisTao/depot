class LineItem < ActiveRecord::Base
	# Association
	belongs_to :cart
	belongs_to :product

end
