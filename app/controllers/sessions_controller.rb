class SessionsController < ApplicationController

  def new
    @cart = current_cart
  end

  def create
  	user = User.find_by(name: params[:sessions][:name])
  	if user and user.authenticate(params[:sessions][:password])
  		session[:user_id] = user.id
  		flash[:success] = 'Welcome to Pragmatic Bookshelf '
  		redirect_to admin_path
  	else
  		redirect_to login_url, alert: 'Invalid user/password combination'
  	end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Logged out'
    redirect_to root_path
  end

  private
  	def set_cart
  		@cart = current_cart
  	end
end
