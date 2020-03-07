class AddBoxRefToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :box, null: true, foreign_key: true
  end
end
