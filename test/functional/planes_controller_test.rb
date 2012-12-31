require 'test_helper'

class PlanesControllerTest < ActionController::TestCase
  setup do
    @plane = planes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:planes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plane" do
    assert_difference('Plane.count') do
      post :create, plane: { pl_elim: @plane.pl_elim, pl_importe: @plane.pl_importe, pl_importe: @plane.pl_importe, pl_nombre: @plane.pl_nombre, pl_recar1: @plane.pl_recar1, pl_recar1: @plane.pl_recar1, pl_recar2: @plane.pl_recar2, pl_recar2: @plane.pl_recar2, pl_user: @plane.pl_user, pl_vel: @plane.pl_vel }
    end

    assert_redirected_to plane_path(assigns(:plane))
  end

  test "should show plane" do
    get :show, id: @plane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plane
    assert_response :success
  end

  test "should update plane" do
    put :update, id: @plane, plane: { pl_elim: @plane.pl_elim, pl_importe: @plane.pl_importe, pl_importe: @plane.pl_importe, pl_nombre: @plane.pl_nombre, pl_recar1: @plane.pl_recar1, pl_recar1: @plane.pl_recar1, pl_recar2: @plane.pl_recar2, pl_recar2: @plane.pl_recar2, pl_user: @plane.pl_user, pl_vel: @plane.pl_vel }
    assert_redirected_to plane_path(assigns(:plane))
  end

  test "should destroy plane" do
    assert_difference('Plane.count', -1) do
      delete :destroy, id: @plane
    end

    assert_redirected_to planes_path
  end
end
