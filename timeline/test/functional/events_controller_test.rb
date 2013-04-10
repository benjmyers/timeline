require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:one)
  end

  test "should get index" do
    sign_in users(:john)
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should be logged in to create an event" do
    post :create, event: { date: @event.date, description: @event.description, time: @event.time, title: @event.title }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should create event when logged in" do
    sign_in users(:john)
    assert_difference('Event.count') do
      post :create, event: { date: @event.date, description: @event.description, time: @event.time, title: @event.title }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    sign_in users(:john)
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:john)
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    sign_in users(:john)
    put :update, id: @event, event: { date: @event.date, description: @event.description, time: @event.time, title: @event.title }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    sign_in users(:john)
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
