class TimelineObject < ActiveRecord::Base
	
	belongs_to :user

	attr_accessible :title, :user_id, :description, :image
	has_attached_file :image, :styles => {:medium => "400x400#", :thumb => "100x100#" }

	has_many :events 	

	validates :title, presence: true

  def get_events
    sorted_events = events.sort_by {|x| [x.date, x.time]}
  end
  
end
