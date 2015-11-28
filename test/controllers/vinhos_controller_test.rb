require 'test_helper'

class VinhosControllerTest < ActionController::TestCase
  setup do
    @vinho = vinhos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vinhos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vinho" do
    assert_difference('Vinho.count') do
      post :create, vinho: { ano: @vinho.ano, avaliacao: @vinho.avaliacao, descricao: @vinho.descricao, foto: @vinho.foto, nome: @vinho.nome, tipo: @vinho.tipo }
    end

    assert_redirected_to vinho_path(assigns(:vinho))
  end

  test "should show vinho" do
    get :show, id: @vinho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vinho
    assert_response :success
  end

  test "should update vinho" do
    patch :update, id: @vinho, vinho: { ano: @vinho.ano, avaliacao: @vinho.avaliacao, descricao: @vinho.descricao, foto: @vinho.foto, nome: @vinho.nome, tipo: @vinho.tipo }
    assert_redirected_to vinho_path(assigns(:vinho))
  end

  test "should destroy vinho" do
    assert_difference('Vinho.count', -1) do
      delete :destroy, id: @vinho
    end

    assert_redirected_to vinhos_path
  end
end
