class AddDlnNoToUsers < ActiveRecord::Migration
  def change
  	add_column :users,:dln_no,:integer
  end
end
