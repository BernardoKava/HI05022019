require "application_system_test_case"

class BankcardsTest < ApplicationSystemTestCase
  setup do
    @bankcard = bankcards(:one)
  end

  test "visiting the index" do
    visit bankcards_url
    assert_selector "h1", text: "Bankcards"
  end

  test "creating a Bankcard" do
    visit bankcards_url
    click_on "New Bankcard"

    fill_in "Active", with: @bankcard.active
    fill_in "Bankaccount", with: @bankcard.bankaccount_id
    fill_in "Card Number", with: @bankcard.card_number
    fill_in "Expiry Date", with: @bankcard.expiry_date
    fill_in "Note", with: @bankcard.note
    fill_in "Person", with: @bankcard.person_id
    fill_in "Security Code", with: @bankcard.security_code
    click_on "Create Bankcard"

    assert_text "Bankcard was successfully created"
    click_on "Back"
  end

  test "updating a Bankcard" do
    visit bankcards_url
    click_on "Edit", match: :first

    fill_in "Active", with: @bankcard.active
    fill_in "Bankaccount", with: @bankcard.bankaccount_id
    fill_in "Card Number", with: @bankcard.card_number
    fill_in "Expiry Date", with: @bankcard.expiry_date
    fill_in "Note", with: @bankcard.note
    fill_in "Person", with: @bankcard.person_id
    fill_in "Security Code", with: @bankcard.security_code
    click_on "Update Bankcard"

    assert_text "Bankcard was successfully updated"
    click_on "Back"
  end

  test "destroying a Bankcard" do
    visit bankcards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bankcard was successfully destroyed"
  end
end
