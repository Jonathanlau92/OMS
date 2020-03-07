class Order < ApplicationRecord
  has_many :boxes
  accepts_nested_attributes_for :boxes, reject_if: :all_blank, allow_destroy: true

  enum payment_method: { cash: 0, paynow: 1 }
end
