class CartsController < ApplicationController
  before_action :initialize_cart

  def add
    @cart.add_item params[:id]
    session["cart"] = @cart.serialize
    product = Product.find params[:id]
    redirect_back(fallback_location: root_path)
  end

  def show
  end

  def checkout
    @order_form= OrderForm.new user: User.new
  end
end
