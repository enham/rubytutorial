require 'test_helper'

class GranteesControllerTest < ActionController::TestCase
  setup do
    @grantee = grantees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grantees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grantee" do
    assert_difference('Grantee.count') do
      post :create, grantee: { address: @grantee.address, grant_amount: @grantee.grant_amount, grant_date: @grantee.grant_date, name: @grantee.name }
    end

    assert_redirected_to grantee_path(assigns(:grantee))
  end

  test "should show grantee" do
    get :show, id: @grantee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grantee
    assert_response :success
  end

  test "should update grantee" do
    put :update, id: @grantee, grantee: { address: @grantee.address, grant_amount: @grantee.grant_amount, grant_date: @grantee.grant_date, name: @grantee.name }
    assert_redirected_to grantee_path(assigns(:grantee))
  end

  test "should destroy grantee" do
    assert_difference('Grantee.count', -1) do
      delete :destroy, id: @grantee
    end

    assert_redirected_to grantees_path
  end
end
