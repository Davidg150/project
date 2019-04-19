require "application_system_test_case"

class JerseysTest < ApplicationSystemTestCase
  setup do
    @jersey = jerseys(:one)
  end

  test "visiting the index" do
    visit jerseys_url
    assert_selector "h1", text: "Jerseys"
  end

  test "creating a Jersey" do
    visit jerseys_url
    click_on "New Jersey"

    fill_in "Country", with: @jersey.country
    fill_in "Description", with: @jersey.description
    fill_in "Image url", with: @jersey.image_url
    fill_in "Price", with: @jersey.price
    fill_in "Size", with: @jersey.size
    fill_in "Team", with: @jersey.team
    fill_in "Year", with: @jersey.year
    click_on "Create Jersey"

    assert_text "Jersey was successfully created"
    click_on "Back"
  end

  test "updating a Jersey" do
    visit jerseys_url
    click_on "Edit", match: :first

    fill_in "Country", with: @jersey.country
    fill_in "Description", with: @jersey.description
    fill_in "Image url", with: @jersey.image_url
    fill_in "Price", with: @jersey.price
    fill_in "Size", with: @jersey.size
    fill_in "Team", with: @jersey.team
    fill_in "Year", with: @jersey.year
    click_on "Update Jersey"

    assert_text "Jersey was successfully updated"
    click_on "Back"
  end

  test "destroying a Jersey" do
    visit jerseys_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jersey was successfully destroyed"
  end
end
