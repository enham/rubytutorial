require 'test_helper'

class CitizenshipClassesControllerTest < ActionController::TestCase
  setup do
    @citizenship_class = citizenship_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citizenship_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citizenship_class" do
    assert_difference('CitizenshipClass.count') do
      post :create, citizenship_class: { delivery_date: @citizenship_class.delivery_date, hours: @citizenship_class.hours, instructor: @citizenship_class.instructor, name: @citizenship_class.name }
    end

    assert_redirected_to citizenship_class_path(assigns(:citizenship_class))
  end

  test "should show citizenship_class" do
    get :show, id: @citizenship_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citizenship_class
    assert_response :success
  end

  test "should update citizenship_class" do
    put :update, id: @citizenship_class, citizenship_class: { delivery_date: @citizenship_class.delivery_date, hours: @citizenship_class.hours, instructor: @citizenship_class.instructor, name: @citizenship_class.name }
    assert_redirected_to citizenship_class_path(assigns(:citizenship_class))
  end

  test "should destroy citizenship_class" do
    assert_difference('CitizenshipClass.count', -1) do
      delete :destroy, id: @citizenship_class
    end

    assert_redirected_to citizenship_classes_path
  end
end
