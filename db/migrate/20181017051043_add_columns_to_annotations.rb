class AddColumnsToAnnotations < ActiveRecord::Migration
  def change
  	add_column :annotations, :Project_Select, :string
  	add_column :annotations, :Merchant_Name, :string
  	add_column :annotations, :Source, :string
  	add_column :annotations, :Note, :string
  	add_column :annotations, :Order, :datetime
  	add_column :annotations, :Delivery, :datetime
  	rename_column :annotations, :item_name, :Item_Name
  	rename_column :annotations, :item_price, :Item_Price
  end
end
