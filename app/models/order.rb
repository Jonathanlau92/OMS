class Order < ApplicationRecord
	has_many :boxes
	enum payment_method: { cash: 0, paynow: 1 }
end
