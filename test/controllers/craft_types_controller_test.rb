require 'test_helper'

class CraftTypesControllerTest < ActionController::TestCase
  setup do
    @craft_type = craft_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:craft_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create craft_type" do
    assert_difference('CraftType.count') do
      post :create, craft_type: { description: @craft_type.description, type: @craft_type.type }
    end

    assert_redirected_to craft_type_path(assigns(:craft_type))
  end

  test "should show craft_type" do
    get :show, id: @craft_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @craft_type
    assert_response :success
  end

  test "should update craft_type" do
    patch :update, id: @craft_type, craft_type: { description: @craft_type.description, type: @craft_type.type }
    assert_redirected_to craft_type_path(assigns(:craft_type))
  end

  test "should destroy craft_type" do
    assert_difference('CraftType.count', -1) do
      delete :destroy, id: @craft_type
    end

    assert_redirected_to craft_types_path
  end
end
