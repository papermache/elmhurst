class AddTradeStatusToShare < ActiveRecord::Migration
  def change
  	add_column :shares,:is_trade_open,:boolean, default: false
  end
end
