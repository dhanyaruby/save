require 'test_helper'

class TrainingCentersControllerTest < ActionController::TestCase
  setup do
    @training_center = training_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_center" do
    assert_difference('TrainingCenter.count') do
      post :create, :training_center => @training_center.attributes
    end

    assert_redirected_to training_center_path(assigns(:training_center))
  end

  test "should show training_center" do
    get :show, :id => @training_center.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @training_center.to_param
    assert_response :success
  end

  test "should update training_center" do
    put :update, :id => @training_center.to_param, :training_center => @training_center.attributes
    assert_redirected_to training_center_path(assigns(:training_center))
  end

  test "should destroy training_center" do
    assert_difference('TrainingCenter.count', -1) do
      delete :destroy, :id => @training_center.to_param
    end

    assert_redirected_to training_centers_path
  end
end
