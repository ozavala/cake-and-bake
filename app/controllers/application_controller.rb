class ApplicationController < ActionController::Base

  def initialize_cart
    @cart = Cart.build_from_hash session
  end
end
