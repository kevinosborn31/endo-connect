require 'test_helper'

class BloodSugarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_sugar = blood_sugars(:one)
  end

  test "should get index" do
    get blood_sugars_url
    assert_response :success
  end

  test "should get new" do
    get new_blood_sugar_url
    assert_response :success
  end

  test "should create blood_sugar" do
    assert_difference('BloodSugar.count') do
      post blood_sugars_url, params: { blood_sugar: { level: @blood_sugar.level, time: @blood_sugar.time, user_id: @blood_sugar.user_id } }
    end

    assert_redirected_to blood_sugar_url(BloodSugar.last)
  end

  test "should show blood_sugar" do
    get blood_sugar_url(@blood_sugar)
    assert_response :success
  end

  test "should get edit" do
    get edit_blood_sugar_url(@blood_sugar)
    assert_response :success
  end

  test "should update blood_sugar" do
    patch blood_sugar_url(@blood_sugar), params: { blood_sugar: { level: @blood_sugar.level, time: @blood_sugar.time, user_id: @blood_sugar.user_id } }
    assert_redirected_to blood_sugar_url(@blood_sugar)
  end

  test "should destroy blood_sugar" do
    assert_difference('BloodSugar.count', -1) do
      delete blood_sugar_url(@blood_sugar)
    end

    assert_redirected_to blood_sugars_url
  end
end
