class StoresController < ApplicationController
  def index
  	@products = Product.all.order(:title)
  	@cart = current_cart
  end
end
