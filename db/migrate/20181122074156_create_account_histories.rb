class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
    	t.string :grant
    	t.datetime :date
    	t.string :account
    	t.string :market
    	t.float :amount

      t.timestamps null: false
    end
  end
end
