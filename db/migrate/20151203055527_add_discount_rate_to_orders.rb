class AddDiscountRateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :discount_rate, :integer
  end
end
