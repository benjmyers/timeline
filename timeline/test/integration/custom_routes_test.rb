require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /login route opens the login page" do
  	get '/login'
  	assert_response :success
  end
  test "that /register route opens the registration page" do
  	get '/register'
  	assert_response :success
  end
  test "that /timelines route opens the timeline index page" do
  	get '/timelines'
  	assert_response :success
  end
  test "that /newtimeline route opens the new timeline page" do
  	get '/newtimeline'
  	assert_response :success
  end
end
