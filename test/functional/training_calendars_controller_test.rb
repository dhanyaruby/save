require 'test_helper'

class TrainingCalendarsControllerTest < ActionController::TestCase
  setup do
    @training_calendar = training_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_calendar" do
    assert_difference('TrainingCalendar.count') do
      post :create, :training_calendar => @training_calendar.attributes
    end

    assert_redirected_to training_calendar_path(assigns(:training_calendar))
  end

  test "should show training_calendar" do
    get :show, :id => @training_calendar.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @training_calendar.to_param
    assert_response :success
  end

  test "should update training_calendar" do
    put :update, :id => @training_calendar.to_param, :training_calendar => @training_calendar.attributes
    assert_redirected_to training_calendar_path(assigns(:training_calendar))
  end

  test "should destroy training_calendar" do
    assert_difference('TrainingCalendar.count', -1) do
      delete :destroy, :id => @training_calendar.to_param
    end

    assert_redirected_to training_calendars_path
  end
end
