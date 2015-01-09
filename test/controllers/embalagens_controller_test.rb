require 'test_helper'

class EmbalagensControllerTest < ActionController::TestCase
  setup do
    @embalagem = embalagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:embalagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create embalagem" do
    assert_difference('Embalagem.count') do
      post :create, embalagem: { caracteristicas: @embalagem.caracteristicas, material_id: @embalagem.material_id, tipo_id: @embalagem.tipo_id, unidade_id: @embalagem.unidade_id, volume: @embalagem.volume }
    end

    assert_redirected_to embalagem_path(assigns(:embalagem))
  end

  test "should show embalagem" do
    get :show, id: @embalagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @embalagem
    assert_response :success
  end

  test "should update embalagem" do
    patch :update, id: @embalagem, embalagem: { caracteristicas: @embalagem.caracteristicas, material_id: @embalagem.material_id, tipo_id: @embalagem.tipo_id, unidade_id: @embalagem.unidade_id, volume: @embalagem.volume }
    assert_redirected_to embalagem_path(assigns(:embalagem))
  end

  test "should destroy embalagem" do
    assert_difference('Embalagem.count', -1) do
      delete :destroy, id: @embalagem
    end

    assert_redirected_to embalagens_path
  end
end
