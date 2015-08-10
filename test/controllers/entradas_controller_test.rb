require 'test_helper'

class EntradasControllerTest < ActionController::TestCase
  setup do
    @entrada = entradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entrada" do
    assert_difference('Entrada.count') do
      post :create, entrada: { lote: @entrada.lote, mp_id: @entrada.mp_id, nf: @entrada.nf, obs: @entrada.obs, qtde: @entrada.qtde, receb: @entrada.receb, validade: @entrada.validade }
    end

    assert_redirected_to entrada_path(assigns(:entrada))
  end

  test "should show entrada" do
    get :show, id: @entrada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entrada
    assert_response :success
  end

  test "should update entrada" do
    patch :update, id: @entrada, entrada: { lote: @entrada.lote, mp_id: @entrada.mp_id, nf: @entrada.nf, obs: @entrada.obs, qtde: @entrada.qtde, receb: @entrada.receb, validade: @entrada.validade }
    assert_redirected_to entrada_path(assigns(:entrada))
  end

  test "should destroy entrada" do
    assert_difference('Entrada.count', -1) do
      delete :destroy, id: @entrada
    end

    assert_redirected_to entradas_path
  end
end
