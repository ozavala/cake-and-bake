# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  def total_price
    order_items.inject(0) { |sum, item| sum + item.total_price }
  end

  STATES = [
    [ "New", :new ],
    [ "Dispatched", :dispatched ],
    [ "Cancelled", :cancelled ]
  ]
end
