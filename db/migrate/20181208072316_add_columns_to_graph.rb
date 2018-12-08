class AddColumnsToGraph < ActiveRecord::Migration
  def change
  	add_column :graphs,:item_name,:string
  	add_column :graphs,:item_price,:float
  	add_column :graphs,:vendor,:string
  	add_column :graphs,:user,:string
  end
end
