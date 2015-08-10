require 'test_helper'

class TiposControllerTest < ActionController::TestCase
  setup do
    @tipo = tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo" do
    assert_difference('Tipo.count') do
      post :create, tipo: { obs: @tipo.obs, tipo: @tipo.tipo }
    end

    assert_redirected_to tipo_path(assigns(:tipo))
  end

  test "should show tipo" do
    get :show, id: @tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo
    assert_response :success
  end

  test "should update tipo" do
    patch :update, id: @tipo, tipo: { obs: @tipo.obs, tipo: @tipo.tipo }
    assert_redirected_to tipo_path(assigns(:tipo))
  end

  test "should destroy tipo" do
    assert_difference('Tipo.count', -1) do
      delete :destroy, id: @tipo
    end

    assert_redirected_to tipos_path
  end
end
