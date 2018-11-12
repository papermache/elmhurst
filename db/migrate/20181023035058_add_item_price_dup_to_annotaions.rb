class AddItemPriceDupToAnnotaions < ActiveRecord::Migration
  def change
  	add_column :annotations,:item_price_dup,:integer
  end
end
