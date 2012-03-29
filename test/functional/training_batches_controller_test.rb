require 'test_helper'

class TrainingBatchesControllerTest < ActionController::TestCase
  setup do
    @training_batch = training_batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:training_batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create training_batch" do
    assert_difference('TrainingBatch.count') do
      post :create, :training_batch => @training_batch.attributes
    end

    assert_redirected_to training_batch_path(assigns(:training_batch))
  end

  test "should show training_batch" do
    get :show, :id => @training_batch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @training_batch.to_param
    assert_response :success
  end

  test "should update training_batch" do
    put :update, :id => @training_batch.to_param, :training_batch => @training_batch.attributes
    assert_redirected_to training_batch_path(assigns(:training_batch))
  end

  test "should destroy training_batch" do
    assert_difference('TrainingBatch.count', -1) do
      delete :destroy, :id => @training_batch.to_param
    end

    assert_redirected_to training_batches_path
  end
end
