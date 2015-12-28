require 'test_helper'

class PoasControllerTest < ActionController::TestCase
  setup do
    @poa = poas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poa" do
    assert_difference('Poa.count') do
      post :create, poa: { description: @poa.description, name: @poa.name }
    end

    assert_redirected_to poa_path(assigns(:poa))
  end

  test "should show poa" do
    get :show, id: @poa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poa
    assert_response :success
  end

  test "should update poa" do
    patch :update, id: @poa, poa: { description: @poa.description, name: @poa.name }
    assert_redirected_to poa_path(assigns(:poa))
  end

  test "should destroy poa" do
    assert_difference('Poa.count', -1) do
      delete :destroy, id: @poa
    end

    assert_redirected_to poas_path
  end
end
