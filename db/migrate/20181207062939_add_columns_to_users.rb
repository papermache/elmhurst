class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	add_column :users,:address,:text 
  	remove_column :users,:university,:string
  	remove_column :users,:department,:string
  	remove_column :users,:interests,:text
  end
end
