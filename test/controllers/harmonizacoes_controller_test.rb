require 'test_helper'

class HarmonizacoesControllerTest < ActionController::TestCase
  setup do
    @harmonizaco = harmonizacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:harmonizacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create harmonizaco" do
    assert_difference('Harmonizacao.count') do
      post :create, harmonizaco: { prato_id: @harmonizaco.prato_id, vinho_id: @harmonizaco.vinho_id }
    end

    assert_redirected_to harmonizaco_path(assigns(:harmonizaco))
  end

  test "should show harmonizaco" do
    get :show, id: @harmonizaco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @harmonizaco
    assert_response :success
  end

  test "should update harmonizaco" do
    patch :update, id: @harmonizaco, harmonizaco: { prato_id: @harmonizaco.prato_id, vinho_id: @harmonizaco.vinho_id }
    assert_redirected_to harmonizaco_path(assigns(:harmonizaco))
  end

  test "should destroy harmonizaco" do
    assert_difference('Harmonizacao.count', -1) do
      delete :destroy, id: @harmonizaco
    end

    assert_redirected_to harmonizacoes_path
  end
end
