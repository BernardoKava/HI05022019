require "application_system_test_case"

class Icd10InpatientsTest < ApplicationSystemTestCase
  setup do
    @icd10_inpatient = icd10_inpatients(:one)
  end

  test "visiting the index" do
    visit icd10_inpatients_url
    assert_selector "h1", text: "Icd10 Inpatients"
  end

  test "creating a Icd10 inpatient" do
    visit icd10_inpatients_url
    click_on "New Icd10 Inpatient"

    fill_in "Diagnosis code", with: @icd10_inpatient.diagnosis_code
    fill_in "Long description", with: @icd10_inpatient.long_description
    fill_in "Medium description", with: @icd10_inpatient.medium_description
    fill_in "Notes", with: @icd10_inpatient.notes
    fill_in "Short description", with: @icd10_inpatient.short_description
    click_on "Create Icd10 inpatient"

    assert_text "Icd10 inpatient was successfully created"
    click_on "Back"
  end

  test "updating a Icd10 inpatient" do
    visit icd10_inpatients_url
    click_on "Edit", match: :first

    fill_in "Diagnosis code", with: @icd10_inpatient.diagnosis_code
    fill_in "Long description", with: @icd10_inpatient.long_description
    fill_in "Medium description", with: @icd10_inpatient.medium_description
    fill_in "Notes", with: @icd10_inpatient.notes
    fill_in "Short description", with: @icd10_inpatient.short_description
    click_on "Update Icd10 inpatient"

    assert_text "Icd10 inpatient was successfully updated"
    click_on "Back"
  end

  test "destroying a Icd10 inpatient" do
    visit icd10_inpatients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Icd10 inpatient was successfully destroyed"
  end
end
