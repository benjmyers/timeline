class AddPhotoHeightWidth < ActiveRecord::Migration
  def change
  	add_column :events, :image_height, :integer
  	add_column :events, :image_width, :integer
  end


end
