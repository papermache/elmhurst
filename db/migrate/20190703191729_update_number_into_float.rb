class UpdateNumberIntoFloat < ActiveRecord::Migration
  def change

  	change_column :annotations, :Item_Price, :float
  	change_column :annotations, :item_price_dup, :float
  	change_column :order_books, :security_price, :float
  	change_column :order_books, :profit_loss, :float

  end
end
