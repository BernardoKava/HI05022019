require 'test_helper'

class HealthCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_case = health_cases(:one)
  end

  test "should get index" do
    get health_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_health_case_url
    assert_response :success
  end

  test "should create health_case" do
    assert_difference('HealthCase.count') do
      post health_cases_url, params: { health_case: { case_closed: @health_case.case_closed, comments: @health_case.comments, cpt_id: @health_case.cpt_id, diagnosis_details: @health_case.diagnosis_details, external_reference: @health_case.external_reference, icd10_inpatient_id: @health_case.icd10_inpatient_id, icd10_outpatient_id: @health_case.icd10_outpatient_id, insurance_cover: @health_case.insurance_cover, insurance_cover_amount: @health_case.insurance_cover_amount, internal_reference: @health_case.internal_reference, medical_establishment_id: @health_case.medical_establishment_id, medical_personal_id: @health_case.medical_personal_id, out_of_pocket_amount: @health_case.out_of_pocket_amount, person_id: @health_case.person_id, precedent_case_id: @health_case.precedent_case_id, treatment_details: @health_case.treatment_details } }
    end

    assert_redirected_to health_case_url(HealthCase.last)
  end

  test "should show health_case" do
    get health_case_url(@health_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_case_url(@health_case)
    assert_response :success
  end

  test "should update health_case" do
    patch health_case_url(@health_case), params: { health_case: { case_closed: @health_case.case_closed, comments: @health_case.comments, cpt_id: @health_case.cpt_id, diagnosis_details: @health_case.diagnosis_details, external_reference: @health_case.external_reference, icd10_inpatient_id: @health_case.icd10_inpatient_id, icd10_outpatient_id: @health_case.icd10_outpatient_id, insurance_cover: @health_case.insurance_cover, insurance_cover_amount: @health_case.insurance_cover_amount, internal_reference: @health_case.internal_reference, medical_establishment_id: @health_case.medical_establishment_id, medical_personal_id: @health_case.medical_personal_id, out_of_pocket_amount: @health_case.out_of_pocket_amount, person_id: @health_case.person_id, precedent_case_id: @health_case.precedent_case_id, treatment_details: @health_case.treatment_details } }
    assert_redirected_to health_case_url(@health_case)
  end

  test "should destroy health_case" do
    assert_difference('HealthCase.count', -1) do
      delete health_case_url(@health_case)
    end

    assert_redirected_to health_cases_url
  end
end
