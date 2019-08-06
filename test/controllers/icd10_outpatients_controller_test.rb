require 'test_helper'

class Icd10OutpatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icd10_outpatient = icd10_outpatients(:one)
  end

  test "should get index" do
    get icd10_outpatients_url
    assert_response :success
  end

  test "should get new" do
    get new_icd10_outpatient_url
    assert_response :success
  end

  test "should create icd10_outpatient" do
    assert_difference('Icd10Outpatient.count') do
      post icd10_outpatients_url, params: { icd10_outpatient: { diagnosis_code: @icd10_outpatient.diagnosis_code, long_description: @icd10_outpatient.long_description, medium_description: @icd10_outpatient.medium_description, notes: @icd10_outpatient.notes, short_description: @icd10_outpatient.short_description } }
    end

    assert_redirected_to icd10_outpatient_url(Icd10Outpatient.last)
  end

  test "should show icd10_outpatient" do
    get icd10_outpatient_url(@icd10_outpatient)
    assert_response :success
  end

  test "should get edit" do
    get edit_icd10_outpatient_url(@icd10_outpatient)
    assert_response :success
  end

  test "should update icd10_outpatient" do
    patch icd10_outpatient_url(@icd10_outpatient), params: { icd10_outpatient: { diagnosis_code: @icd10_outpatient.diagnosis_code, long_description: @icd10_outpatient.long_description, medium_description: @icd10_outpatient.medium_description, notes: @icd10_outpatient.notes, short_description: @icd10_outpatient.short_description } }
    assert_redirected_to icd10_outpatient_url(@icd10_outpatient)
  end

  test "should destroy icd10_outpatient" do
    assert_difference('Icd10Outpatient.count', -1) do
      delete icd10_outpatient_url(@icd10_outpatient)
    end

    assert_redirected_to icd10_outpatients_url
  end
end
