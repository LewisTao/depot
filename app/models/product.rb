class Product < ActiveRecord::Base
	# Validation
	validates_presence_of :title, :description, :image_url, :price
	validates_numericality_of :price, numericality: {greater_than_or_equal_to: 0.01}	
	validates_uniqueness_of :title
	validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)$}i, message: 'must be a URL for GIF, JPG or PNG image.', multiline: true} 
	
end
