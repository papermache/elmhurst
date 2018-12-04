class AddColumnToAnnotations < ActiveRecord::Migration
  def change
  	remove_column :annotations, :Order, :datetime
  	remove_column :annotations, :Delivery, :datetime
  	add_column :annotations, :date, :datetime
  	add_column :annotations, :date_status , :string

  end
end
