require 'test_helper'

class ClientesmktsControllerTest < ActionController::TestCase
  setup do
    @clientesmkt = clientesmkts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientesmkts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientesmkt" do
    assert_difference('Clientesmkt.count') do
      post :create, clientesmkt: { cmk_burstlimit: @clientesmkt.cmk_burstlimit, cmk_burstthreshold: @clientesmkt.cmk_burstthreshold, cmk_burttime: @clientesmkt.cmk_burttime, cmk_direction: @clientesmkt.cmk_direction, cmk_interface: @clientesmkt.cmk_interface, cmk_limitat: @clientesmkt.cmk_limitat, cmk_maxlimit: @clientesmkt.cmk_maxlimit, cmk_packetmarks: @clientesmkt.cmk_packetmarks, cmk_parent: @clientesmkt.cmk_parent, cmk_priority: @clientesmkt.cmk_priority, cmk_queue: @clientesmkt.cmk_queue, cmk_targetaddr: @clientesmkt.cmk_targetaddr, cmk_totalqueue: @clientesmkt.cmk_totalqueue }
    end

    assert_redirected_to clientesmkt_path(assigns(:clientesmkt))
  end

  test "should show clientesmkt" do
    get :show, id: @clientesmkt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientesmkt
    assert_response :success
  end

  test "should update clientesmkt" do
    put :update, id: @clientesmkt, clientesmkt: { cmk_burstlimit: @clientesmkt.cmk_burstlimit, cmk_burstthreshold: @clientesmkt.cmk_burstthreshold, cmk_burttime: @clientesmkt.cmk_burttime, cmk_direction: @clientesmkt.cmk_direction, cmk_interface: @clientesmkt.cmk_interface, cmk_limitat: @clientesmkt.cmk_limitat, cmk_maxlimit: @clientesmkt.cmk_maxlimit, cmk_packetmarks: @clientesmkt.cmk_packetmarks, cmk_parent: @clientesmkt.cmk_parent, cmk_priority: @clientesmkt.cmk_priority, cmk_queue: @clientesmkt.cmk_queue, cmk_targetaddr: @clientesmkt.cmk_targetaddr, cmk_totalqueue: @clientesmkt.cmk_totalqueue }
    assert_redirected_to clientesmkt_path(assigns(:clientesmkt))
  end

  test "should destroy clientesmkt" do
    assert_difference('Clientesmkt.count', -1) do
      delete :destroy, id: @clientesmkt
    end

    assert_redirected_to clientesmkts_path
  end
end
