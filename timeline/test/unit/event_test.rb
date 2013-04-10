require 'test_helper'

class EventTest < ActiveSupport::TestCase
 	test "an event should have a title" do 
		event = Event.new
		assert !event.save
		assert !event.errors[:title].empty?
	end
	test "an event should have an image" do 
		event = Event.new
		assert !event.save
		assert !event.errors[:image].empty?
	end
 	test "an event should have a time" do 
		event = Event.new
		assert !event.save
		assert !event.errors[:time].empty?
	end
 	test "an event should have a date" do 
		event = Event.new
		assert !event.save
		assert !event.errors[:date].empty?
	end
end
