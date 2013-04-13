class CreateTimelineObjects < ActiveRecord::Migration
  def change
    create_table :timeline_objects do |t|
      t.string :title

      t.timestamps
    end
  end
end
