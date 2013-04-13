class AddImageToTimeline < ActiveRecord::Migration
  def change
  	add_column :timeline_objects, :description, :string
  	add_attachment :timeline_objects, :image
  end
end
