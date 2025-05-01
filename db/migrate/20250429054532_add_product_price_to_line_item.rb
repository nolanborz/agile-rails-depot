class AddProductPriceToLineItem < ActiveRecord::Migration[7.2]
  def change
    add_column :line_items, :price, :decimal, precision: 8, scale: 2, default: 1.0
  end
end
