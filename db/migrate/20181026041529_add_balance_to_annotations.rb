class AddBalanceToAnnotations < ActiveRecord::Migration
  def change
  	add_column :annotations,:balance,:decimal,default: 0
  end
end
