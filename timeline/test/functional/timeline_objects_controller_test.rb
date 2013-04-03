require 'test_helper'

class TimelineObjectsControllerTest < ActionController::TestCase
  setup do
    @timeline_object = timeline_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timeline_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeline_object" do
    assert_difference('TimelineObject.count') do
      post :create, timeline_object: { title: @timeline_object.title }
    end

    assert_redirected_to timeline_object_path(assigns(:timeline_object))
  end

  test "should show timeline_object" do
    get :show, id: @timeline_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timeline_object
    assert_response :success
  end

  test "should update timeline_object" do
    put :update, id: @timeline_object, timeline_object: { title: @timeline_object.title }
    assert_redirected_to timeline_object_path(assigns(:timeline_object))
  end

  test "should destroy timeline_object" do
    assert_difference('TimelineObject.count', -1) do
      delete :destroy, id: @timeline_object
    end

    assert_redirected_to timeline_objects_path
  end
end
