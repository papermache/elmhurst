class AddAnnotationCreatorIdToAnnotations < ActiveRecord::Migration
  def change
  	add_column :annotations,:annotation_creator_id,:integer
  end
end
