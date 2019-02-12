require "application_system_test_case"

class PlannedactivitiesTest < ApplicationSystemTestCase
  setup do
    @plannedactivity = plannedactivities(:one)
  end

  test "visiting the index" do
    visit plannedactivities_url
    assert_selector "h1", text: "Plannedactivities"
  end

  test "creating a Plannedactivity" do
    visit plannedactivities_url
    click_on "New Plannedactivity"

    fill_in "Activity Date", with: @plannedactivity.activity_date
    fill_in "Description", with: @plannedactivity.description
    fill_in "Name", with: @plannedactivity.name
    fill_in "Person", with: @plannedactivity.person_id
    fill_in "Target Amount", with: @plannedactivity.target_amount
    fill_in "User", with: @plannedactivity.user_id
    click_on "Create Plannedactivity"

    assert_text "Plannedactivity was successfully created"
    click_on "Back"
  end

  test "updating a Plannedactivity" do
    visit plannedactivities_url
    click_on "Edit", match: :first

    fill_in "Activity Date", with: @plannedactivity.activity_date
    fill_in "Description", with: @plannedactivity.description
    fill_in "Name", with: @plannedactivity.name
    fill_in "Person", with: @plannedactivity.person_id
    fill_in "Target Amount", with: @plannedactivity.target_amount
    fill_in "User", with: @plannedactivity.user_id
    click_on "Update Plannedactivity"

    assert_text "Plannedactivity was successfully updated"
    click_on "Back"
  end

  test "destroying a Plannedactivity" do
    visit plannedactivities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Plannedactivity was successfully destroyed"
  end
end
