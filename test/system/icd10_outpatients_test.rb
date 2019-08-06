require "application_system_test_case"

class Icd10OutpatientsTest < ApplicationSystemTestCase
  setup do
    @icd10_outpatient = icd10_outpatients(:one)
  end

  test "visiting the index" do
    visit icd10_outpatients_url
    assert_selector "h1", text: "Icd10 Outpatients"
  end

  test "creating a Icd10 outpatient" do
    visit icd10_outpatients_url
    click_on "New Icd10 Outpatient"

    fill_in "Diagnosis code", with: @icd10_outpatient.diagnosis_code
    fill_in "Long description", with: @icd10_outpatient.long_description
    fill_in "Medium description", with: @icd10_outpatient.medium_description
    fill_in "Notes", with: @icd10_outpatient.notes
    fill_in "Short description", with: @icd10_outpatient.short_description
    click_on "Create Icd10 outpatient"

    assert_text "Icd10 outpatient was successfully created"
    click_on "Back"
  end

  test "updating a Icd10 outpatient" do
    visit icd10_outpatients_url
    click_on "Edit", match: :first

    fill_in "Diagnosis code", with: @icd10_outpatient.diagnosis_code
    fill_in "Long description", with: @icd10_outpatient.long_description
    fill_in "Medium description", with: @icd10_outpatient.medium_description
    fill_in "Notes", with: @icd10_outpatient.notes
    fill_in "Short description", with: @icd10_outpatient.short_description
    click_on "Update Icd10 outpatient"

    assert_text "Icd10 outpatient was successfully updated"
    click_on "Back"
  end

  test "destroying a Icd10 outpatient" do
    visit icd10_outpatients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Icd10 outpatient was successfully destroyed"
  end
end
