class Box < ApplicationRecord
  has_many :line_items
  accepts_nested_attributes_for :line_items, reject_if: :all_blank, allow_destroy: true
  belongs_to :order
end
