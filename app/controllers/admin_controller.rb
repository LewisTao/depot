class AdminController < ApplicationController
  before_action :authorize
  
  def index
  	@cart = current_cart
  	@total_orders = Order.count
  end

  private
  	def authorize
  		unless session[:user_id].present?
  			flash[:danger] = 'Please log in'
  			redirect_to root_path
  		end
    end
end
