class Product < ApplicationRecord
  belongs_to :user
  belongs_to :boxes

  has_one_attached :product_image
end
