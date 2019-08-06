require 'test_helper'

class Icd10InpatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icd10_inpatient = icd10_inpatients(:one)
  end

  test "should get index" do
    get icd10_inpatients_url
    assert_response :success
  end

  test "should get new" do
    get new_icd10_inpatient_url
    assert_response :success
  end

  test "should create icd10_inpatient" do
    assert_difference('Icd10Inpatient.count') do
      post icd10_inpatients_url, params: { icd10_inpatient: { diagnosis_code: @icd10_inpatient.diagnosis_code, long_description: @icd10_inpatient.long_description, medium_description: @icd10_inpatient.medium_description, notes: @icd10_inpatient.notes, short_description: @icd10_inpatient.short_description } }
    end

    assert_redirected_to icd10_inpatient_url(Icd10Inpatient.last)
  end

  test "should show icd10_inpatient" do
    get icd10_inpatient_url(@icd10_inpatient)
    assert_response :success
  end

  test "should get edit" do
    get edit_icd10_inpatient_url(@icd10_inpatient)
    assert_response :success
  end

  test "should update icd10_inpatient" do
    patch icd10_inpatient_url(@icd10_inpatient), params: { icd10_inpatient: { diagnosis_code: @icd10_inpatient.diagnosis_code, long_description: @icd10_inpatient.long_description, medium_description: @icd10_inpatient.medium_description, notes: @icd10_inpatient.notes, short_description: @icd10_inpatient.short_description } }
    assert_redirected_to icd10_inpatient_url(@icd10_inpatient)
  end

  test "should destroy icd10_inpatient" do
    assert_difference('Icd10Inpatient.count', -1) do
      delete icd10_inpatient_url(@icd10_inpatient)
    end

    assert_redirected_to icd10_inpatients_url
  end
end
