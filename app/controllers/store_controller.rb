class StoreController < ApplicationController
  include CurrentCart
  before_action :session_counter
  before_action :set_cart
  def index
    @products = Product.order(:title)
  end

  def session_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
    @session_counter = session[:counter]
  end
end
