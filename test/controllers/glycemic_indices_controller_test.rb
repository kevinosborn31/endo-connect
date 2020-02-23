require 'test_helper'

class GlycemicIndicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @glycemic_index = glycemic_indices(:one)
  end

  test "should get index" do
    get glycemic_indices_url
    assert_response :success
  end

  test "should get new" do
    get new_glycemic_index_url
    assert_response :success
  end

  test "should create glycemic_index" do
    assert_difference('GlycemicIndex.count') do
      post glycemic_indices_url, params: { glycemic_index: { food: @glycemic_index.food, gi: @glycemic_index.gi } }
    end

    assert_redirected_to glycemic_index_url(GlycemicIndex.last)
  end

  test "should show glycemic_index" do
    get glycemic_index_url(@glycemic_index)
    assert_response :success
  end

  test "should get edit" do
    get edit_glycemic_index_url(@glycemic_index)
    assert_response :success
  end

  test "should update glycemic_index" do
    patch glycemic_index_url(@glycemic_index), params: { glycemic_index: { food: @glycemic_index.food, gi: @glycemic_index.gi } }
    assert_redirected_to glycemic_index_url(@glycemic_index)
  end

  test "should destroy glycemic_index" do
    assert_difference('GlycemicIndex.count', -1) do
      delete glycemic_index_url(@glycemic_index)
    end

    assert_redirected_to glycemic_indices_url
  end
end
