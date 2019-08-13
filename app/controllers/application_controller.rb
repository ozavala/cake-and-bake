class ApplicationController < ActionController::Base
  before_action :find_categories

  def initialize_cart
    @cart = Cart.build_from_hash session
  end

  def find_categories
    @categories = Category.all
  end 
end
