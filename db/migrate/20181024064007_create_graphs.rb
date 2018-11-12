class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.decimal :graph_data,:precision => 4

      t.timestamps null: false
    end
  end
end
