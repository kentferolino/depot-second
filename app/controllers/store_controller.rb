class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    set_counter_session
    @times_store_visited = session[:counter]
  end

  private

  def set_counter_session
    return session[:counter] = 1 if session[:counter].nil?

    session[:counter] = session[:counter] + 1
  end
end
