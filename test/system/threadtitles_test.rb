require "application_system_test_case"

class ThreadtitlesTest < ApplicationSystemTestCase
  setup do
    @threadtitle = threadtitles(:one)
  end

  test "visiting the index" do
    visit threadtitles_url
    assert_selector "h1", text: "Threadtitles"
  end

  test "creating a Threadtitle" do
    visit threadtitles_url
    click_on "New Threadtitle"

    fill_in "Name", with: @threadtitle.name
    click_on "Create Threadtitle"

    assert_text "Threadtitle was successfully created"
    click_on "Back"
  end

  test "updating a Threadtitle" do
    visit threadtitles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @threadtitle.name
    click_on "Update Threadtitle"

    assert_text "Threadtitle was successfully updated"
    click_on "Back"
  end

  test "destroying a Threadtitle" do
    visit threadtitles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Threadtitle was successfully destroyed"
  end
end
