require 'test_helper'

class ChemicalsControllerTest < ActionController::TestCase
  setup do
    @chemical = chemicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chemicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chemical" do
    assert_difference('Chemical.count') do
      post :create, chemical: @chemical.attributes
    end

    assert_redirected_to chemical_path(assigns(:chemical))
  end

  test "should show chemical" do
    get :show, id: @chemical.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chemical.to_param
    assert_response :success
  end

  test "should update chemical" do
    put :update, id: @chemical.to_param, chemical: @chemical.attributes
    assert_redirected_to chemical_path(assigns(:chemical))
  end

  test "should destroy chemical" do
    assert_difference('Chemical.count', -1) do
      delete :destroy, id: @chemical.to_param
    end

    assert_redirected_to chemicals_path
  end
end
