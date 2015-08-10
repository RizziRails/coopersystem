require 'test_helper'

class ListaProdsControllerTest < ActionController::TestCase
  setup do
    @lista_prod = lista_prods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lista_prods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lista_prod" do
    assert_difference('ListaProd.count') do
      post :create, lista_prod: { formula_id: @lista_prod.formula_id, mp_id: @lista_prod.mp_id, qtde: @lista_prod.qtde }
    end

    assert_redirected_to lista_prod_path(assigns(:lista_prod))
  end

  test "should show lista_prod" do
    get :show, id: @lista_prod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lista_prod
    assert_response :success
  end

  test "should update lista_prod" do
    patch :update, id: @lista_prod, lista_prod: { formula_id: @lista_prod.formula_id, mp_id: @lista_prod.mp_id, qtde: @lista_prod.qtde }
    assert_redirected_to lista_prod_path(assigns(:lista_prod))
  end

  test "should destroy lista_prod" do
    assert_difference('ListaProd.count', -1) do
      delete :destroy, id: @lista_prod
    end

    assert_redirected_to lista_prods_path
  end
end
