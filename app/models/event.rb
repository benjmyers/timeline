class Event < ActiveRecord::Base
	belongs_to :timeline_object
	
  	attr_accessible :date, :description, :time, :title, :image, 
  	:image_width, :image_height, :timeline_object_id
	has_attached_file :image, :styles => { :large => "500x500>", :medium => "400x400#", :thumb => "100x100>" }
	after_post_process :save_image_dimensions

	validates :title, presence: true
	validates :image, presence: true
	validates :time, presence: true
	validates :date, presence: true


  def save_image_dimensions
    geo = Paperclip::Geometry.from_file(image.queued_for_write[:original])
    self.image_width = geo.width
    self.image_height = geo.height
  end

end

