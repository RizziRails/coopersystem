require 'test_helper'

class ListaEmbalagensControllerTest < ActionController::TestCase
  setup do
    @lista_embalagem = lista_embalagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lista_embalagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lista_embalagem" do
    assert_difference('ListaEmbalagem.count') do
      post :create, lista_embalagem: { batch_id: @lista_embalagem.batch_id, embalagem_id: @lista_embalagem.embalagem_id, qtde: @lista_embalagem.qtde }
    end

    assert_redirected_to lista_embalagem_path(assigns(:lista_embalagem))
  end

  test "should show lista_embalagem" do
    get :show, id: @lista_embalagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lista_embalagem
    assert_response :success
  end

  test "should update lista_embalagem" do
    patch :update, id: @lista_embalagem, lista_embalagem: { batch_id: @lista_embalagem.batch_id, embalagem_id: @lista_embalagem.embalagem_id, qtde: @lista_embalagem.qtde }
    assert_redirected_to lista_embalagem_path(assigns(:lista_embalagem))
  end

  test "should destroy lista_embalagem" do
    assert_difference('ListaEmbalagem.count', -1) do
      delete :destroy, id: @lista_embalagem
    end

    assert_redirected_to lista_embalagens_path
  end
end
