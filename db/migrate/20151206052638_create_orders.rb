class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.decimal :total_price
      t.integer :discount_rate
      t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
