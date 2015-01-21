require 'test_helper'

class SaidafisicasControllerTest < ActionController::TestCase
  setup do
    @saidafisica = saidafisicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:saidafisicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create saidafisica" do
    assert_difference('Saidafisica.count') do
      post :create, saidafisica: { batch_id: @saidafisica.batch_id, exped: @saidafisica.exped, lote: @saidafisica.lote, mp_id: @saidafisica.mp_id, obs: @saidafisica.obs, qtde: @saidafisica.qtde, validade: @saidafisica.validade }
    end

    assert_redirected_to saidafisica_path(assigns(:saidafisica))
  end

  test "should show saidafisica" do
    get :show, id: @saidafisica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @saidafisica
    assert_response :success
  end

  test "should update saidafisica" do
    patch :update, id: @saidafisica, saidafisica: { batch_id: @saidafisica.batch_id, exped: @saidafisica.exped, lote: @saidafisica.lote, mp_id: @saidafisica.mp_id, obs: @saidafisica.obs, qtde: @saidafisica.qtde, validade: @saidafisica.validade }
    assert_redirected_to saidafisica_path(assigns(:saidafisica))
  end

  test "should destroy saidafisica" do
    assert_difference('Saidafisica.count', -1) do
      delete :destroy, id: @saidafisica
    end

    assert_redirected_to saidafisicas_path
  end
end
