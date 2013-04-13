class AddSpecificIdToEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :timeline_objects, :timeline_object_id
  end
end
