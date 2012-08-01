require 'test_helper'

class ChefsControllerTest < ActionController::TestCase
  setup do
    @chef = chefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chef" do
    assert_difference('Chef.count') do
      post :create, chef: { bill: @chef.bill, name: @chef.name }
    end

    assert_redirected_to chef_path(assigns(:chef))
  end

  test "should show chef" do
    get :show, id: @chef
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chef
    assert_response :success
  end

  test "should update chef" do
    put :update, id: @chef, chef: { bill: @chef.bill, name: @chef.name }
    assert_redirected_to chef_path(assigns(:chef))
  end

  test "should destroy chef" do
    assert_difference('Chef.count', -1) do
      delete :destroy, id: @chef
    end

    assert_redirected_to chefs_path
  end
end
