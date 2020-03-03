class Order < ApplicationRecord
  has_many :products, through: :boxes

  enum payment_method: { cash: 0, paynow: 1 }
end
