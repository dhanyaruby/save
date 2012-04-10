require 'test_helper'

class TraineeBatchesControllerTest < ActionController::TestCase
  setup do
    @trainee_batch = trainee_batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainee_batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainee_batch" do
    assert_difference('TraineeBatch.count') do
      post :create, :trainee_batch => @trainee_batch.attributes
    end

    assert_redirected_to trainee_batch_path(assigns(:trainee_batch))
  end

  test "should show trainee_batch" do
    get :show, :id => @trainee_batch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trainee_batch.to_param
    assert_response :success
  end

  test "should update trainee_batch" do
    put :update, :id => @trainee_batch.to_param, :trainee_batch => @trainee_batch.attributes
    assert_redirected_to trainee_batch_path(assigns(:trainee_batch))
  end

  test "should destroy trainee_batch" do
    assert_difference('TraineeBatch.count', -1) do
      delete :destroy, :id => @trainee_batch.to_param
    end

    assert_redirected_to trainee_batches_path
  end
end
