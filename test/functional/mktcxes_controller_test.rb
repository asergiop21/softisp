require 'test_helper'

class MktcxesControllerTest < ActionController::TestCase
  setup do
    @mktcx = mktcxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mktcxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mktcx" do
    assert_difference('Mktcx.count') do
      post :create, mktcx: { mkcip: @mktcx.mkcip, mkcpass: @mktcx.mkcpass, mkcpuerto: @mktcx.mkcpuerto, mkcusuario: @mktcx.mkcusuario }
    end

    assert_redirected_to mktcx_path(assigns(:mktcx))
  end

  test "should show mktcx" do
    get :show, id: @mktcx
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mktcx
    assert_response :success
  end

  test "should update mktcx" do
    put :update, id: @mktcx, mktcx: { mkcip: @mktcx.mkcip, mkcpass: @mktcx.mkcpass, mkcpuerto: @mktcx.mkcpuerto, mkcusuario: @mktcx.mkcusuario }
    assert_redirected_to mktcx_path(assigns(:mktcx))
  end

  test "should destroy mktcx" do
    assert_difference('Mktcx.count', -1) do
      delete :destroy, id: @mktcx
    end

    assert_redirected_to mktcxes_path
  end
end
