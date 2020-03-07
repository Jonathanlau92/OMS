class Product < ApplicationRecord
  belongs_to :user
  # belongs_to :box
  has_one :line_item

  has_one_attached :product_image
end
