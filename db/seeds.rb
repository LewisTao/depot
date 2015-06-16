Product.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

product_1 = Product.create(	title: 'Programming Ruby 1.9', 
				description: 'Ruby is the fasters growing and most exciting dynamic language out there. If you need to get working programs delivered fast, you should add Ruby to your toolbox.',
				image_url: 'https://www.apple.com/product-red/images/hero.jpg',
				price: 49.95)
product_2 = Product.create(	title: 'Agile Web Development Rails 4', 
				description: 'Agile Web Development with Rails does an excellent job of making the Rails environment accessible in an enjoyable and memorable way',
				image_url: 'http://ecx.images-amazon.com/images/I/51lbXFwhFvL._SL500_AA300_.jpg',
				price: 50.05)

