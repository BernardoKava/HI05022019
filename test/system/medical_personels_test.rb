require "application_system_test_case"

class MedicalPersonelsTest < ApplicationSystemTestCase
  setup do
    @medical_personel = medical_personels(:one)
  end

  test "visiting the index" do
    visit medical_personels_url
    assert_selector "h1", text: "Medical Personels"
  end

  test "creating a Medical personel" do
    visit medical_personels_url
    click_on "New Medical Personel"

    check "Active" if @medical_personel.active
    fill_in "Comments", with: @medical_personel.comments
    fill_in "Designation", with: @medical_personel.designation
    fill_in "Name", with: @medical_personel.name
    fill_in "Specialisation", with: @medical_personel.specialisation
    click_on "Create Medical personel"

    assert_text "Medical personel was successfully created"
    click_on "Back"
  end

  test "updating a Medical personel" do
    visit medical_personels_url
    click_on "Edit", match: :first

    check "Active" if @medical_personel.active
    fill_in "Comments", with: @medical_personel.comments
    fill_in "Designation", with: @medical_personel.designation
    fill_in "Name", with: @medical_personel.name
    fill_in "Specialisation", with: @medical_personel.specialisation
    click_on "Update Medical personel"

    assert_text "Medical personel was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical personel" do
    visit medical_personels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical personel was successfully destroyed"
  end
end
