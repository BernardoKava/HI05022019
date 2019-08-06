require "application_system_test_case"

class HealthCasesTest < ApplicationSystemTestCase
  setup do
    @health_case = health_cases(:one)
  end

  test "visiting the index" do
    visit health_cases_url
    assert_selector "h1", text: "Health Cases"
  end

  test "creating a Health case" do
    visit health_cases_url
    click_on "New Health Case"

    check "Case closed" if @health_case.case_closed
    fill_in "Comments", with: @health_case.comments
    fill_in "Cpt", with: @health_case.cpt_id
    fill_in "Diagnosis details", with: @health_case.diagnosis_details
    fill_in "External reference", with: @health_case.external_reference
    fill_in "Icd10 inpatient", with: @health_case.icd10_inpatient_id
    fill_in "Icd10 outpatient", with: @health_case.icd10_outpatient_id
    check "Insurance cover" if @health_case.insurance_cover
    fill_in "Insurance cover amount", with: @health_case.insurance_cover_amount
    fill_in "Internal reference", with: @health_case.internal_reference
    fill_in "Medical establishment", with: @health_case.medical_establishment_id
    fill_in "Medical personal", with: @health_case.medical_personal_id
    fill_in "Out of pocket amount", with: @health_case.out_of_pocket_amount
    fill_in "Person", with: @health_case.person_id
    fill_in "Precedent case", with: @health_case.precedent_case_id
    fill_in "Treatment details", with: @health_case.treatment_details
    click_on "Create Health case"

    assert_text "Health case was successfully created"
    click_on "Back"
  end

  test "updating a Health case" do
    visit health_cases_url
    click_on "Edit", match: :first

    check "Case closed" if @health_case.case_closed
    fill_in "Comments", with: @health_case.comments
    fill_in "Cpt", with: @health_case.cpt_id
    fill_in "Diagnosis details", with: @health_case.diagnosis_details
    fill_in "External reference", with: @health_case.external_reference
    fill_in "Icd10 inpatient", with: @health_case.icd10_inpatient_id
    fill_in "Icd10 outpatient", with: @health_case.icd10_outpatient_id
    check "Insurance cover" if @health_case.insurance_cover
    fill_in "Insurance cover amount", with: @health_case.insurance_cover_amount
    fill_in "Internal reference", with: @health_case.internal_reference
    fill_in "Medical establishment", with: @health_case.medical_establishment_id
    fill_in "Medical personal", with: @health_case.medical_personal_id
    fill_in "Out of pocket amount", with: @health_case.out_of_pocket_amount
    fill_in "Person", with: @health_case.person_id
    fill_in "Precedent case", with: @health_case.precedent_case_id
    fill_in "Treatment details", with: @health_case.treatment_details
    click_on "Update Health case"

    assert_text "Health case was successfully updated"
    click_on "Back"
  end

  test "destroying a Health case" do
    visit health_cases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health case was successfully destroyed"
  end
end
