class Event < ActiveRecord::Base

  	attr_accessible :date, :description, :time, :title, :image
	has_attached_file :image, :styles => { :large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }
end
