class AddColumnAccountHistory < ActiveRecord::Migration
  def change
    
    add_column :account_histories , :durations, :string
  end
end
