class OrdersController < ApplicationController
  before_action :initialize_cart

  def create
    @order_form = OrderForm.new(user: User.new(order_params[:user]),
    cart: @cart
    )
    if @order_form.save
      redirect_to root_path
    else
      render 'carts/checkout'
    end
  end

  private

  def order_params
    params.require(:order_form).permit(user: [:name, :phone, :address, :city, :country, :postal_code, :email])
  end
end
