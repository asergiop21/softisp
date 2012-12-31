require 'test_helper'

class HistoryEquipmentsControllerTest < ActionController::TestCase
  setup do
    @history_equipment = history_equipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:history_equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create history_equipment" do
    assert_difference('HistoryEquipment.count') do
      post :create, history_equipment: { he_observation: @history_equipment.he_observation, he_state: @history_equipment.he_state }
    end

    assert_redirected_to history_equipment_path(assigns(:history_equipment))
  end

  test "should show history_equipment" do
    get :show, id: @history_equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @history_equipment
    assert_response :success
  end

  test "should update history_equipment" do
    put :update, id: @history_equipment, history_equipment: { he_observation: @history_equipment.he_observation, he_state: @history_equipment.he_state }
    assert_redirected_to history_equipment_path(assigns(:history_equipment))
  end

  test "should destroy history_equipment" do
    assert_difference('HistoryEquipment.count', -1) do
      delete :destroy, id: @history_equipment
    end

    assert_redirected_to history_equipments_path
  end
end
