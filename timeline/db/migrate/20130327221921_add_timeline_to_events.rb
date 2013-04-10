class AddTimelineToEvents < ActiveRecord::Migration
  def change
  	 add_column :timeline_objects, :events, :string
  	 add_index :timeline_objects, :events
  end
end
