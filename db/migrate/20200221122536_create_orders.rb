class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.json :buyer_details
      t.integer :payment_method
      t.integer :quantity
      t.date :payment_date
      t.string :location

      t.timestamps
    end
  end
end
