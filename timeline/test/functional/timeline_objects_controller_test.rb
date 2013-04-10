require 'test_helper'

class TimelineObjectsControllerTest < ActionController::TestCase
  setup do
    @timeline_object = timeline_objects(:one)
  end

  test "should get index" do
    sign_in users(:john)
    get :index
    assert_response :success
    assert_not_nil assigns(:timeline_objects)
  end

  test "should get new" do
    sign_in users(:john)
    get :new
    assert_response :redirected
    assert_redirected_to new_user_session_path
  end

  test "should be logged in to create a timeline_object" do
    post :create, timeline_object: { title: @timeline_object.title }
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should create timeline_object when logged in" do
    sign_in users(:john)
    assert_difference('TimelineObject.count') do
      post :create, timeline_object: { title: @timeline_object.title }
    end

    assert_redirected_to timeline_object_path(assigns(:timeline_object))
  end

  test "should show timeline_object" do
    sign_in users(:john)
    get :show, id: @timeline_object
    assert_response :success
  end

  test "should get edit when logged in" do
    sign_in users(:john)
    get :edit, id: @timeline_object
    assert_response :success
  end

  test "should update timeline_object" do
    sign_in users(:john)
    put :update, id: @timeline_object, timeline_object: { title: @timeline_object.title }
    assert_redirected_to timeline_object_path(assigns(:timeline_object))
  end

  test "should destroy timeline_object" do
    sign_in users(:john)
    assert_difference('TimelineObject.count', -1) do
      delete :destroy, id: @timeline_object
    end

    assert_redirected_to timeline_objects_path
  end
end
