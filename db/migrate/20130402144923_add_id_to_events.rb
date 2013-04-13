class AddIdToEvents < ActiveRecord::Migration
  def change
  	# remove_index :timeline_objects, :events
  	#  remove_column :timeline_objects, :events, :string
  	 

  	 add_column :events, :timeline_objects, :integer
  	 add_index :events, :timeline_objects
  end
end
