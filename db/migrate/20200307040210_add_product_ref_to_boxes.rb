class AddProductRefToBoxes < ActiveRecord::Migration[6.0]
  def change
    add_reference :boxes, :product, null: false, foreign_key: true
  end
end
