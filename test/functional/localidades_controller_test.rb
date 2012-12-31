require 'test_helper'

class LocalidadesControllerTest < ActionController::TestCase
  setup do
    @localidade = localidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:localidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create localidade" do
    assert_difference('Localidade.count') do
      post :create, localidade: { lc_cp: @localidade.lc_cp, lc_dpto: @localidade.lc_dpto, lc_nombre: @localidade.lc_nombre, lc_pais: @localidade.lc_pais, lc_provincia: @localidade.lc_provincia }
    end

    assert_redirected_to localidade_path(assigns(:localidade))
  end

  test "should show localidade" do
    get :show, id: @localidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @localidade
    assert_response :success
  end

  test "should update localidade" do
    put :update, id: @localidade, localidade: { lc_cp: @localidade.lc_cp, lc_dpto: @localidade.lc_dpto, lc_nombre: @localidade.lc_nombre, lc_pais: @localidade.lc_pais, lc_provincia: @localidade.lc_provincia }
    assert_redirected_to localidade_path(assigns(:localidade))
  end

  test "should destroy localidade" do
    assert_difference('Localidade.count', -1) do
      delete :destroy, id: @localidade
    end

    assert_redirected_to localidades_path
  end
end
