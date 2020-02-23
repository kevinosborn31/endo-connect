require "application_system_test_case"

class GlycemicIndicesTest < ApplicationSystemTestCase
  setup do
    @glycemic_index = glycemic_indices(:one)
  end

  test "visiting the index" do
    visit glycemic_indices_url
    assert_selector "h1", text: "Glycemic Indices"
  end

  test "creating a Glycemic index" do
    visit glycemic_indices_url
    click_on "New Glycemic Index"

    fill_in "Food", with: @glycemic_index.food
    fill_in "Gi", with: @glycemic_index.gi
    click_on "Create Glycemic index"

    assert_text "Glycemic index was successfully created"
    click_on "Back"
  end

  test "updating a Glycemic index" do
    visit glycemic_indices_url
    click_on "Edit", match: :first

    fill_in "Food", with: @glycemic_index.food
    fill_in "Gi", with: @glycemic_index.gi
    click_on "Update Glycemic index"

    assert_text "Glycemic index was successfully updated"
    click_on "Back"
  end

  test "destroying a Glycemic index" do
    visit glycemic_indices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Glycemic index was successfully destroyed"
  end
end
