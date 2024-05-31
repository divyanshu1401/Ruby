require "application_system_test_case"

class ReelsTest < ApplicationSystemTestCase
  setup do
    @reel = reels(:one)
  end

  test "visiting the index" do
    visit reels_url
    assert_selector "h1", text: "Reels"
  end

  test "should create reel" do
    visit reels_url
    click_on "New reel"

    fill_in "Caption", with: @reel.caption
    fill_in "Imageurl", with: @reel.imageUrl
    click_on "Create Reel"

    assert_text "Reel was successfully created"
    click_on "Back"
  end

  test "should update Reel" do
    visit reel_url(@reel)
    click_on "Edit this reel", match: :first

    fill_in "Caption", with: @reel.caption
    fill_in "Imageurl", with: @reel.imageUrl
    click_on "Update Reel"

    assert_text "Reel was successfully updated"
    click_on "Back"
  end

  test "should destroy Reel" do
    visit reel_url(@reel)
    click_on "Destroy this reel", match: :first

    assert_text "Reel was successfully destroyed"
  end
end
