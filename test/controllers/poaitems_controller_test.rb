require 'test_helper'

class PoaitemsControllerTest < ActionController::TestCase
  setup do
    @poaitem = poaitems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poaitems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poaitem" do
    assert_difference('Poaitem.count') do
      post :create, poaitem: { content: @poaitem.content, type: @poaitem.type }
    end

    assert_redirected_to poaitem_path(assigns(:poaitem))
  end

  test "should show poaitem" do
    get :show, id: @poaitem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poaitem
    assert_response :success
  end

  test "should update poaitem" do
    patch :update, id: @poaitem, poaitem: { content: @poaitem.content, type: @poaitem.type }
    assert_redirected_to poaitem_path(assigns(:poaitem))
  end

  test "should destroy poaitem" do
    assert_difference('Poaitem.count', -1) do
      delete :destroy, id: @poaitem
    end

    assert_redirected_to poaitems_path
  end
end
