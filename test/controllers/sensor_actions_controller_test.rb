require 'test_helper'

class SensorActionsControllerTest < ActionController::TestCase
  setup do
    @sensor_action = sensor_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_action" do
    assert_difference('SensorAction.count') do
      post :create, sensor_action: { action: @sensor_action.action, name: @sensor_action.name, sensorType_id: @sensor_action.sensorType_id }
    end

    assert_redirected_to sensor_action_path(assigns(:sensor_action))
  end

  test "should show sensor_action" do
    get :show, id: @sensor_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_action
    assert_response :success
  end

  test "should update sensor_action" do
    patch :update, id: @sensor_action, sensor_action: { action: @sensor_action.action, name: @sensor_action.name, sensorType_id: @sensor_action.sensorType_id }
    assert_redirected_to sensor_action_path(assigns(:sensor_action))
  end

  test "should destroy sensor_action" do
    assert_difference('SensorAction.count', -1) do
      delete :destroy, id: @sensor_action
    end

    assert_redirected_to sensor_actions_path
  end
end
