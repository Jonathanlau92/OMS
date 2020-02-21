class CreateBoxes < ActiveRecord::Migration[6.0]
  def change
    create_table :boxes do |t|
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
