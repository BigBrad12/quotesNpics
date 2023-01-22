require "application_system_test_case"

class UppiesTest < ApplicationSystemTestCase
  setup do
    @uppy = uppies(:one)
  end

  test "visiting the index" do
    visit uppies_url
    assert_selector "h1", text: "Uppies"
  end

  test "should create uppy" do
    visit uppies_url
    click_on "New uppy"

    fill_in "Body", with: @uppy.body
    fill_in "Wallpaper", with: @uppy.wallpaper
    click_on "Create Uppy"

    assert_text "Uppy was successfully created"
    click_on "Back"
  end

  test "should update Uppy" do
    visit uppy_url(@uppy)
    click_on "Edit this uppy", match: :first

    fill_in "Body", with: @uppy.body
    fill_in "Wallpaper", with: @uppy.wallpaper
    click_on "Update Uppy"

    assert_text "Uppy was successfully updated"
    click_on "Back"
  end

  test "should destroy Uppy" do
    visit uppy_url(@uppy)
    click_on "Destroy this uppy", match: :first

    assert_text "Uppy was successfully destroyed"
  end
end
