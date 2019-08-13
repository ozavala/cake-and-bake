# == Schema Information
#
# Table name: order_items
#
#  id         :bigint           not null, primary key
#  order_id   :bigint
#  product_id :bigint
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def total_price
    self.quantity * self.product.price
  end
end
