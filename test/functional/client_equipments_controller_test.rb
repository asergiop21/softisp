require 'test_helper'

class ClientEquipmentsControllerTest < ActionController::TestCase
  setup do
    @client_equipment = client_equipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_equipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_equipment" do
    assert_difference('ClientEquipment.count') do
      post :create, client_equipment: { ce_linked: @client_equipment.ce_linked, ce_observation: @client_equipment.ce_observation, ce_resp_equip: @client_equipment.ce_resp_equip, ce_respswitch: @client_equipment.ce_respswitch, ce_resptrafo: @client_equipment.ce_resptrafo, ce_state: @client_equipment.ce_state }
    end

    assert_redirected_to client_equipment_path(assigns(:client_equipment))
  end

  test "should show client_equipment" do
    get :show, id: @client_equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_equipment
    assert_response :success
  end

  test "should update client_equipment" do
    put :update, id: @client_equipment, client_equipment: { ce_linked: @client_equipment.ce_linked, ce_observation: @client_equipment.ce_observation, ce_resp_equip: @client_equipment.ce_resp_equip, ce_respswitch: @client_equipment.ce_respswitch, ce_resptrafo: @client_equipment.ce_resptrafo, ce_state: @client_equipment.ce_state }
    assert_redirected_to client_equipment_path(assigns(:client_equipment))
  end

  test "should destroy client_equipment" do
    assert_difference('ClientEquipment.count', -1) do
      delete :destroy, id: @client_equipment
    end

    assert_redirected_to client_equipments_path
  end
end
