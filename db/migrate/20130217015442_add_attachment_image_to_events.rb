class AddAttachmentImageToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :events, :image
  end
end
