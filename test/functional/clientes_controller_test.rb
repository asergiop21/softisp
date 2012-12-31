require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { cl_apellido: @cliente.cl_apellido, cl_bardes: @cliente.cl_bardes, cl_barrio: @cliente.cl_barrio, cl_cat: @cliente.cl_cat, cl_celular2: @cliente.cl_celular2, cl_celular: @cliente.cl_celular, cl_cuit: @cliente.cl_cuit, cl_dni: @cliente.cl_dni, cl_domdes: @cliente.cl_domdes, cl_domicilio: @cliente.cl_domicilio, cl_elim: @cliente.cl_elim, cl_email: @cliente.cl_email, cl_empresa: @cliente.cl_empresa, cl_fecha: @cliente.cl_fecha, cl_fecnac: @cliente.cl_fecnac, cl_idcat: @cliente.cl_idcat, cl_nombre: @cliente.cl_nombre, cl_numcliente: @cliente.cl_numcliente, cl_observaciones: @cliente.cl_observaciones, cl_precliente: @cliente.cl_precliente, cl_refdes: @cliente.cl_refdes, cl_referencia: @cliente.cl_referencia, cl_telefono: @cliente.cl_telefono, cl_time: @cliente.cl_time, cl_user: @cliente.cl_user, cl_user: @cliente.cl_user }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    put :update, id: @cliente, cliente: { cl_apellido: @cliente.cl_apellido, cl_bardes: @cliente.cl_bardes, cl_barrio: @cliente.cl_barrio, cl_cat: @cliente.cl_cat, cl_celular2: @cliente.cl_celular2, cl_celular: @cliente.cl_celular, cl_cuit: @cliente.cl_cuit, cl_dni: @cliente.cl_dni, cl_domdes: @cliente.cl_domdes, cl_domicilio: @cliente.cl_domicilio, cl_elim: @cliente.cl_elim, cl_email: @cliente.cl_email, cl_empresa: @cliente.cl_empresa, cl_fecha: @cliente.cl_fecha, cl_fecnac: @cliente.cl_fecnac, cl_idcat: @cliente.cl_idcat, cl_nombre: @cliente.cl_nombre, cl_numcliente: @cliente.cl_numcliente, cl_observaciones: @cliente.cl_observaciones, cl_precliente: @cliente.cl_precliente, cl_refdes: @cliente.cl_refdes, cl_referencia: @cliente.cl_referencia, cl_telefono: @cliente.cl_telefono, cl_time: @cliente.cl_time, cl_user: @cliente.cl_user, cl_user: @cliente.cl_user }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
