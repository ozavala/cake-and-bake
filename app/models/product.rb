# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  price      :float
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  validates_presence_of :name, :price
  validates_numericality_of :price
  
end
