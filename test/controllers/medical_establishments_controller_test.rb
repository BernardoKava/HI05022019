require 'test_helper'

class MedicalEstablishmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_establishment = medical_establishments(:one)
  end

  test "should get index" do
    get medical_establishments_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_establishment_url
    assert_response :success
  end

  test "should create medical_establishment" do
    assert_difference('MedicalEstablishment.count') do
      post medical_establishments_url, params: { medical_establishment: { active: @medical_establishment.active, comments: @medical_establishment.comments, country: @medical_establishment.country, location: @medical_establishment.location, name: @medical_establishment.name } }
    end

    assert_redirected_to medical_establishment_url(MedicalEstablishment.last)
  end

  test "should show medical_establishment" do
    get medical_establishment_url(@medical_establishment)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_establishment_url(@medical_establishment)
    assert_response :success
  end

  test "should update medical_establishment" do
    patch medical_establishment_url(@medical_establishment), params: { medical_establishment: { active: @medical_establishment.active, comments: @medical_establishment.comments, country: @medical_establishment.country, location: @medical_establishment.location, name: @medical_establishment.name } }
    assert_redirected_to medical_establishment_url(@medical_establishment)
  end

  test "should destroy medical_establishment" do
    assert_difference('MedicalEstablishment.count', -1) do
      delete medical_establishment_url(@medical_establishment)
    end

    assert_redirected_to medical_establishments_url
  end
end
