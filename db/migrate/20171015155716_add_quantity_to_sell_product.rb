class AddQuantityToSellProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :sell_products, :quantity, :integer
  end
end
