require "application_system_test_case"

class MainfarmsTest < ApplicationSystemTestCase
  setup do
    @mainfarm = mainfarms(:one)
  end

  test "visiting the index" do
    visit mainfarms_url
    assert_selector "h1", text: "Mainfarms"
  end

  test "should create mainfarm" do
    visit mainfarms_url
    click_on "New mainfarm"

    fill_in "Name", with: @mainfarm.name
    click_on "Create Mainfarm"

    assert_text "Mainfarm was successfully created"
    click_on "Back"
  end

  test "should update Mainfarm" do
    visit mainfarm_url(@mainfarm)
    click_on "Edit this mainfarm", match: :first

    fill_in "Name", with: @mainfarm.name
    click_on "Update Mainfarm"

    assert_text "Mainfarm was successfully updated"
    click_on "Back"
  end

  test "should destroy Mainfarm" do
    visit mainfarm_url(@mainfarm)
    click_on "Destroy this mainfarm", match: :first

    assert_text "Mainfarm was successfully destroyed"
  end
end
