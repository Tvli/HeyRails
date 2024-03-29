class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart
  def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      increment_counter
      @products = Product.order(:title) 
    end
  
  end

   def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end
