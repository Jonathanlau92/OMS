class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, through: :boxes

  has_one_attached :product_image
end
