require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
	test "a user should enter a username" do 
		user = User.new
		assert !user.save
		assert !user.errors[:user_name].empty?
	end
	test "a user should enter a unique profile name" do 
		user = User.new
		user.user_name = users(:john).user_name
		users(:john)
		assert !user.save
		assert !user.errors[:user_name].empty?
	end
	test "a user name is formatted correctly" do
		user = User.new
		user.user_name = "My Profile Name"
		assert !user.save
		assert !user.errors[:user_name].empty?
		assert user.errors[:user_name].include?("Must be formatted correctly.")
	end
	test "a user can have a correctly formatted profile name" do
		user = User.new
		user.user_name="jdoe"
		user.email="jdoe@email.net"
		user.password = user.password_confirmation = "password"
		assert user.valid?
	end
end
