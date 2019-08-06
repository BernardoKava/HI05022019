require 'test_helper'

class MedicalPersonelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_personel = medical_personels(:one)
  end

  test "should get index" do
    get medical_personels_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_personel_url
    assert_response :success
  end

  test "should create medical_personel" do
    assert_difference('MedicalPersonel.count') do
      post medical_personels_url, params: { medical_personel: { active: @medical_personel.active, comments: @medical_personel.comments, designation: @medical_personel.designation, name: @medical_personel.name, specialisation: @medical_personel.specialisation } }
    end

    assert_redirected_to medical_personel_url(MedicalPersonel.last)
  end

  test "should show medical_personel" do
    get medical_personel_url(@medical_personel)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_personel_url(@medical_personel)
    assert_response :success
  end

  test "should update medical_personel" do
    patch medical_personel_url(@medical_personel), params: { medical_personel: { active: @medical_personel.active, comments: @medical_personel.comments, designation: @medical_personel.designation, name: @medical_personel.name, specialisation: @medical_personel.specialisation } }
    assert_redirected_to medical_personel_url(@medical_personel)
  end

  test "should destroy medical_personel" do
    assert_difference('MedicalPersonel.count', -1) do
      delete medical_personel_url(@medical_personel)
    end

    assert_redirected_to medical_personels_url
  end
end
