class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :shares
      t.integer :investment_principal
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
