# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  address                :string
#  phone                  :string
#  postal_code            :string
#  country                :string
#  city                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # has_many :orders, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   validates_presence_of :name

    def full_address
  <<~EOF
  #{address}
  #{postal_code} #{city}
  #{country}
  EOF
    end
end
