require "application_system_test_case"

class CptsTest < ApplicationSystemTestCase
  setup do
    @cpt = cpts(:one)
  end

  test "visiting the index" do
    visit cpts_url
    assert_selector "h1", text: "Cpts"
  end

  test "creating a Cpt" do
    visit cpts_url
    click_on "New Cpt"

    fill_in "Clinician descriptor", with: @cpt.clinician_descriptor
    fill_in "Clinician descriptor", with: @cpt.clinician_descriptor_id
    fill_in "Consumer friendly descriptor", with: @cpt.consumer_friendly_descriptor
    fill_in "Cpt code", with: @cpt.cpt_code
    fill_in "Notes", with: @cpt.notes
    click_on "Create Cpt"

    assert_text "Cpt was successfully created"
    click_on "Back"
  end

  test "updating a Cpt" do
    visit cpts_url
    click_on "Edit", match: :first

    fill_in "Clinician descriptor", with: @cpt.clinician_descriptor
    fill_in "Clinician descriptor", with: @cpt.clinician_descriptor_id
    fill_in "Consumer friendly descriptor", with: @cpt.consumer_friendly_descriptor
    fill_in "Cpt code", with: @cpt.cpt_code
    fill_in "Notes", with: @cpt.notes
    click_on "Update Cpt"

    assert_text "Cpt was successfully updated"
    click_on "Back"
  end

  test "destroying a Cpt" do
    visit cpts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cpt was successfully destroyed"
  end
end
