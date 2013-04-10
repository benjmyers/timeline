require 'test_helper'

class TimelineObjectTest < ActiveSupport::TestCase
	test "there should be a timeline name" do 
		timeline = TimelineObject.new
		assert !timeline.save
		assert !timeline.errors[:title].empty?
	end
end
