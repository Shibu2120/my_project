class AddShippingToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :shipping, :decimal
  end
end
