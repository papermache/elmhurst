class ChangeItemPriceToBigintInAnnotations < ActiveRecord::Migration
  	  def up
  	    change_column :annotations, :Item_Price, :bigint
      end

	  def down
	  	change_column :annotations, :Item_Price, :bigint
	  end
end
