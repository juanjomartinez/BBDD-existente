require 'test_helper'

class EmpleadosControllerTest < ActionController::TestCase
  setup do
    @empleado = empleados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empleados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empleado" do
    assert_difference('Empleado.count') do
      post :create, :empleado => @empleado.attributes
    end

    assert_redirected_to empleado_path(assigns(:empleado))
  end

  test "should show empleado" do
    get :show, :id => @empleado.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @empleado.to_param
    assert_response :success
  end

  test "should update empleado" do
    put :update, :id => @empleado.to_param, :empleado => @empleado.attributes
    assert_redirected_to empleado_path(assigns(:empleado))
  end

  test "should destroy empleado" do
    assert_difference('Empleado.count', -1) do
      delete :destroy, :id => @empleado.to_param
    end

    assert_redirected_to empleados_path
  end
end
