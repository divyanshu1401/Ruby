require "application_system_test_case"

class CricketersTest < ApplicationSystemTestCase
  setup do
    @cricketer = cricketers(:one)
  end

  test "visiting the index" do
    visit cricketers_url
    assert_selector "h1", text: "Cricketers"
  end

  test "should create cricketer" do
    visit cricketers_url
    click_on "New cricketer"

    fill_in "Name", with: @cricketer.name
    click_on "Create Cricketer"

    assert_text "Cricketer was successfully created"
    click_on "Back"
  end

  test "should update Cricketer" do
    visit cricketer_url(@cricketer)
    click_on "Edit this cricketer", match: :first

    fill_in "Name", with: @cricketer.name
    click_on "Update Cricketer"

    assert_text "Cricketer was successfully updated"
    click_on "Back"
  end

  test "should destroy Cricketer" do
    visit cricketer_url(@cricketer)
    click_on "Destroy this cricketer", match: :first

    assert_text "Cricketer was successfully destroyed"
  end
end
