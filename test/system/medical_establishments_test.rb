require "application_system_test_case"

class MedicalEstablishmentsTest < ApplicationSystemTestCase
  setup do
    @medical_establishment = medical_establishments(:one)
  end

  test "visiting the index" do
    visit medical_establishments_url
    assert_selector "h1", text: "Medical Establishments"
  end

  test "creating a Medical establishment" do
    visit medical_establishments_url
    click_on "New Medical Establishment"

    check "Active" if @medical_establishment.active
    fill_in "Comments", with: @medical_establishment.comments
    fill_in "Country", with: @medical_establishment.country
    fill_in "Location", with: @medical_establishment.location
    fill_in "Name", with: @medical_establishment.name
    click_on "Create Medical establishment"

    assert_text "Medical establishment was successfully created"
    click_on "Back"
  end

  test "updating a Medical establishment" do
    visit medical_establishments_url
    click_on "Edit", match: :first

    check "Active" if @medical_establishment.active
    fill_in "Comments", with: @medical_establishment.comments
    fill_in "Country", with: @medical_establishment.country
    fill_in "Location", with: @medical_establishment.location
    fill_in "Name", with: @medical_establishment.name
    click_on "Update Medical establishment"

    assert_text "Medical establishment was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical establishment" do
    visit medical_establishments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical establishment was successfully destroyed"
  end
end
