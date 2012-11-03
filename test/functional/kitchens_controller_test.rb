require 'test_helper'

class KitchensControllerTest < ActionController::TestCase
  setup do
    @kitchen = kitchens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitchens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitchen" do
    assert_difference('Kitchen.count') do
      post :create, kitchen: { name: @kitchen.name }
    end

    assert_redirected_to kitchen_path(assigns(:kitchen))
  end

  test "should show kitchen" do
    get :show, id: @kitchen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kitchen
    assert_response :success
  end

  test "should update kitchen" do
    put :update, id: @kitchen, kitchen: { name: @kitchen.name }
    assert_redirected_to kitchen_path(assigns(:kitchen))
  end

  test "should destroy kitchen" do
    assert_difference('Kitchen.count', -1) do
      delete :destroy, id: @kitchen
    end

    assert_redirected_to kitchens_path
  end
end
