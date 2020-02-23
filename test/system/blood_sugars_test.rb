require "application_system_test_case"

class BloodSugarsTest < ApplicationSystemTestCase
  setup do
    @blood_sugar = blood_sugars(:one)
  end

  test "visiting the index" do
    visit blood_sugars_url
    assert_selector "h1", text: "Blood Sugars"
  end

  test "creating a Blood sugar" do
    visit blood_sugars_url
    click_on "New Blood Sugar"

    fill_in "Level", with: @blood_sugar.level
    fill_in "Time", with: @blood_sugar.time
    fill_in "User", with: @blood_sugar.user_id
    click_on "Create Blood sugar"

    assert_text "Blood sugar was successfully created"
    click_on "Back"
  end

  test "updating a Blood sugar" do
    visit blood_sugars_url
    click_on "Edit", match: :first

    fill_in "Level", with: @blood_sugar.level
    fill_in "Time", with: @blood_sugar.time
    fill_in "User", with: @blood_sugar.user_id
    click_on "Update Blood sugar"

    assert_text "Blood sugar was successfully updated"
    click_on "Back"
  end

  test "destroying a Blood sugar" do
    visit blood_sugars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blood sugar was successfully destroyed"
  end
end
