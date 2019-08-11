class AddColumnAccountHistoryDividends < ActiveRecord::Migration
  def change
    add_column :account_histories , :dividend, :integer
  end
end
