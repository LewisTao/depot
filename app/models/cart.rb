class Cart < ActiveRecord::Base
	# Association
	has_many :line_items, dependent: :destroy
end
