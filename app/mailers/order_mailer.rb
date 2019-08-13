class OrderMailer < ActionMailer::Base
  default from: 'oszavala@gmail.com.com'

  def order_confirmation order
    @order = order
    mail to: @order.user.email, subject: "Your order (##{order.id})"
  end
end
