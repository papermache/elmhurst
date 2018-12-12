class AddUserIdToAccountHistories < ActiveRecord::Migration
  def change
  	add_reference :account_histories, :user, foreign_key: true
  end
end
