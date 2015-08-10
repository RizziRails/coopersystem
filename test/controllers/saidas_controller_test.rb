require 'test_helper'

class SaidasControllerTest < ActionController::TestCase
  setup do
    @saida = saidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saida" do
    assert_difference('Saida.count') do
      post :create, saida: { exped: @saida.exped, lote: @saida.lote, mp_id: @saida.mp_id, nf: @saida.nf, obs: @saida.obs, qtde: @saida.qtde, validade: @saida.validade }
    end

    assert_redirected_to saida_path(assigns(:saida))
  end

  test "should show saida" do
    get :show, id: @saida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saida
    assert_response :success
  end

  test "should update saida" do
    patch :update, id: @saida, saida: { exped: @saida.exped, lote: @saida.lote, mp_id: @saida.mp_id, nf: @saida.nf, obs: @saida.obs, qtde: @saida.qtde, validade: @saida.validade }
    assert_redirected_to saida_path(assigns(:saida))
  end

  test "should destroy saida" do
    assert_difference('Saida.count', -1) do
      delete :destroy, id: @saida
    end

    assert_redirected_to saidas_path
  end
end
