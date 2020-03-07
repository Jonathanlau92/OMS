class AddBoxNumberToBoxes < ActiveRecord::Migration[6.0]
  def change
    add_column :boxes, :box_number, :integer
  end
end
