class ChangeGraphDataToFloatInGraphs < ActiveRecord::Migration
  def up
  	change_column :graphs, :graph_data, :float
  end

  def down
  	change_column :graphs, :graph_data, :float
  end
end
