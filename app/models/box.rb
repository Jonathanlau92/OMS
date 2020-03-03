class Box < ApplicationRecord
	# has_many :products
  belongs_to :order
  belongs_to :product
end
