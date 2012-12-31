require 'test_helper'

class EquipmentControllerTest < ActionController::TestCase
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment" do
    assert_difference('Equipment.count') do
      post :create, equipment: { cat_id: @equipment.cat_id, category: @equipment.category, eq_mac: @equipment.eq_mac, eq_node: @equipment.eq_node, eq_observation: @equipment.eq_observation, eq_state: @equipment.eq_state }
    end

    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should show equipment" do
    get :show, id: @equipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment
    assert_response :success
  end

  test "should update equipment" do
    put :update, id: @equipment, equipment: { cat_id: @equipment.cat_id, category: @equipment.category, eq_mac: @equipment.eq_mac, eq_node: @equipment.eq_node, eq_observation: @equipment.eq_observation, eq_state: @equipment.eq_state }
    assert_redirected_to equipment_path(assigns(:equipment))
  end

  test "should destroy equipment" do
    assert_difference('Equipment.count', -1) do
      delete :destroy, id: @equipment
    end

    assert_redirected_to equipment_index_path
  end
end
