require 'test_helper'

class HirecaresControllerTest < ActionController::TestCase
  setup do
    @hirecare = hirecares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hirecares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hirecare" do
    assert_difference('Hirecare.count') do
      post :create, hirecare: { badge: @hirecare.badge, brand: @hirecare.brand, comment: @hirecare.comment, defects: @hirecare.defects, fuel: @hirecare.fuel, model: @hirecare.model, regestration_date: @hirecare.regestration_date, smoking: @hirecare.smoking, status_id: @hirecare.status_id, tech_check: @hirecare.tech_check }
    end

    assert_redirected_to hirecare_path(assigns(:hirecare))
  end

  test "should show hirecare" do
    get :show, id: @hirecare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hirecare
    assert_response :success
  end

  test "should update hirecare" do
    patch :update, id: @hirecare, hirecare: { badge: @hirecare.badge, brand: @hirecare.brand, comment: @hirecare.comment, defects: @hirecare.defects, fuel: @hirecare.fuel, model: @hirecare.model, regestration_date: @hirecare.regestration_date, smoking: @hirecare.smoking, status_id: @hirecare.status_id, tech_check: @hirecare.tech_check }
    assert_redirected_to hirecare_path(assigns(:hirecare))
  end

  test "should destroy hirecare" do
    assert_difference('Hirecare.count', -1) do
      delete :destroy, id: @hirecare
    end

    assert_redirected_to hirecares_path
  end
end
