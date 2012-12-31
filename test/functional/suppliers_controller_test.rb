require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { pv_address: @supplier.pv_address, pv_cel1: @supplier.pv_cel1, pv_cel: @supplier.pv_cel, pv_locality: @supplier.pv_locality, pv_name: @supplier.pv_name, pv_phone: @supplier.pv_phone, pv_province: @supplier.pv_province }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    put :update, id: @supplier, supplier: { pv_address: @supplier.pv_address, pv_cel1: @supplier.pv_cel1, pv_cel: @supplier.pv_cel, pv_locality: @supplier.pv_locality, pv_name: @supplier.pv_name, pv_phone: @supplier.pv_phone, pv_province: @supplier.pv_province }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
