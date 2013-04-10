class AddUserIdToTimelineObjects < ActiveRecord::Migration
  def change
  	 add_column :timeline_objects, :user_id, :integer
  	 add_index :timeline_objects, :user_id
  end
end
