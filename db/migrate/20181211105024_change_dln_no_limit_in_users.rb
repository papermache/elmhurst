class ChangeDlnNoLimitInUsers < ActiveRecord::Migration
 def up
  	change_column :users, :dln_no, :bigint
  end

  def down
  	change_column :users, :dln_no, :bigint
  end
end
